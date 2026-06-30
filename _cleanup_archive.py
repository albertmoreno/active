#!/usr/bin/env python3
"""
Safe cleanup for archived static websites.
- Removes __MACOSX, .psd, unreferenced hash-suffixed JS/CSS duplicates
- Removes obvious junk filenames (Copia, f0fe.html) if unreferenced
- Optionally compresses large raster images in-place (strip EXIF)
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

TEXT_EXT = {".html", ".htm", ".css", ".js", ".xml", ".svg", ".json", ".php"}
ASSET_EXT = {".js", ".css", ".jpg", ".jpeg", ".png", ".gif", ".webp", ".woff", ".woff2", ".ttf", ".pdf"}
HASH_SUFFIX = re.compile(r"_\d{6,}\.(js|css)$", re.I)
JUNK_NAME = re.compile(r"(copia|f0fe\.html|index\.[a-f0-9]+\.html)", re.I)
REF_PATTERN = re.compile(
    r'(?:src|href|url)\s*[=(:]\s*["\']?([^"\'>\s)]+)|["\']([^"\']+\.(?:js|css|jpe?g|png|gif|webp|svg|woff2?|ttf|pdf))["\']',
    re.I,
)

SKIP_TOP = {"jphd2011", "jphd2013", "jphd2015", "jphd2016", "jphd2017", "jphd2019",
            "jphd2020", "jphd2021", "jphd2023", "jphd2024", "jphd2025"}


def collect_referenced_basenames(folder: Path) -> set[str]:
    refs: set[str] = set()
    for f in folder.rglob("*"):
        if not f.is_file() or f.suffix.lower() not in TEXT_EXT:
            continue
        try:
            text = f.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            continue
        for m in REF_PATTERN.finditer(text):
            for g in m.groups():
                if not g:
                    continue
                clean = g.split("?")[0].replace("\\", "/")
                refs.add(Path(clean).name)
                refs.add(clean.split("/")[-1])
    return refs


def compress_image(path: Path, max_dim: int = 1920, jpeg_quality: int = 82) -> int:
    from PIL import Image

    old = path.stat().st_size
    with Image.open(path) as im:
        im = im.convert("RGB") if im.mode in ("RGBA", "P") and path.suffix.lower() in {".jpg", ".jpeg"} else im
        w, h = im.size
        if max(w, h) > max_dim:
            im.thumbnail((max_dim, max_dim), Image.Resampling.LANCZOS)
        save_kw: dict = {}
        if path.suffix.lower() in {".jpg", ".jpeg"}:
            if im.mode != "RGB":
                im = im.convert("RGB")
            save_kw = {"quality": jpeg_quality, "optimize": True}
        elif path.suffix.lower() == ".png":
            save_kw = {"optimize": True}
        elif path.suffix.lower() == ".webp":
            save_kw = {"quality": jpeg_quality, "method": 6}
        im.save(path, **save_kw)
    return old - path.stat().st_size


def cleanup_folder(folder: Path, dry_run: bool, compress: bool) -> tuple[int, int]:
    if folder.name in SKIP_TOP:
        return 0, 0

    refs = collect_referenced_basenames(folder)
    deleted = 0
    saved = 0
    compressed_saved = 0

    # __MACOSX
    for d in list(folder.rglob("__MACOSX")):
        if d.is_dir():
            size = sum(f.stat().st_size for f in d.rglob("*") if f.is_file())
            if not dry_run:
                import shutil
                shutil.rmtree(d)
            deleted += sum(1 for _ in d.rglob("*") if _.is_file())
            saved += size

    candidates: list[Path] = []
    for f in folder.rglob("*"):
        if not f.is_file():
            continue
        name = f.name
        rel = f.relative_to(folder)

        if f.suffix.lower() == ".psd":
            candidates.append(f)
            continue

        if HASH_SUFFIX.search(name) and f.suffix.lower() in {".js", ".css"}:
            if name not in refs:
                candidates.append(f)
            continue

        # Unhashed JS dupes when only hashed OR only unhashed is referenced
        if JUNK_NAME.search(name) and name not in refs:
            candidates.append(f)
            continue

        # Raster assets with Joomla hash suffix, unreferenced originals
        if f.suffix.lower() in {".jpg", ".jpeg", ".png", ".gif", ".webp"}:
            if re.search(r"[-_][a-f0-9]{6,8}\.(jpe?g|png|gif|webp)$", name, re.I):
                if name not in refs:
                    candidates.append(f)
            elif name not in refs and f.stat().st_size > 50_000:
                # large unreferenced images (not favicons etc.)
                candidates.append(f)

    for f in candidates:
        size = f.stat().st_size
        if not dry_run:
            f.unlink()
        deleted += 1
        saved += size

    if compress:
        try:
            from PIL import Image
        except ImportError:
            Image = None  # type: ignore
        if Image:
            for f in folder.rglob("*"):
                if not f.is_file() or f.suffix.lower() not in {".jpg", ".jpeg", ".png", ".webp"}:
                    continue
                if f.stat().st_size < 300_000:
                    continue
                if f.suffix.lower() == ".png" and f.stat().st_size < 800_000:
                    continue
                try:
                    if not dry_run:
                        compressed_saved += compress_image(f)
                    else:
                        compressed_saved += 0  # skip estimate in dry-run
                except OSError:
                    pass

    return deleted, saved + compressed_saved


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("roots", nargs="*", default=[
        "events_arxivats", "projects_arxivats", "annual_arxivats"
    ])
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compress", action="store_true", help="Recompress large images")
    ap.add_argument("--folder", help="Single folder name to process")
    args = ap.parse_args()

    base = Path(__file__).resolve().parent
    total_del = 0
    total_saved = 0
    rows = []

    for root_name in args.roots:
        root = base / root_name
        if not root.is_dir():
            continue
        folders = [root / args.folder] if args.folder else sorted(root.iterdir())
        for folder in folders:
            if not folder.is_dir():
                continue
            before = sum(f.stat().st_size for f in folder.rglob("*") if f.is_file())
            d, s = cleanup_folder(folder, args.dry_run, args.compress)
            after = before - s if not args.dry_run else before
            if d > 0 or s > 0:
                rows.append((folder.name, d, s / 1024 / 1024, before / 1024 / 1024))
            total_del += d
            total_saved += s

    mode = "DRY-RUN" if args.dry_run else "DONE"
    print(f"=== {mode}: deleted {total_del} files, saved {total_saved/1024/1024:.1f} MB ===")
    for name, d, smb, bmb in sorted(rows, key=lambda x: -x[2]):
        print(f"  {name:30}  {d:4} files  {smb:7.1f} MB saved  (was {bmb:.1f} MB)")


if __name__ == "__main__":
    main()
