#!/usr/bin/env python3
"""Compress large raster images and PDFs in archive folders."""
from __future__ import annotations

import sys
from pathlib import Path

from PIL import Image

try:
    import pikepdf
except ImportError:
    pikepdf = None

SKIP = {f"jphd{y}" for y in (2011, 2013, 2015, 2016, 2017, 2019, 2020, 2021, 2023, 2024, 2025)}
ROOTS = ["events_arxivats", "projects_arxivats", "annual_arxivats"]
MIN_IMAGE = 250_000
MIN_PDF = 1_000_000


def compress_image(path: Path) -> int:
    old = path.stat().st_size
    ext = path.suffix.lower()
    with Image.open(path) as im:
        w, h = im.size
        max_dim = 1920
        if max(w, h) > max_dim:
            im.thumbnail((max_dim, max_dim), Image.Resampling.LANCZOS)
        if ext in {".jpg", ".jpeg"}:
            im = im.convert("RGB")
            im.save(path, quality=82, optimize=True)
        elif ext == ".png":
            im.save(path, optimize=True)
        elif ext == ".webp":
            im.save(path, quality=82, method=6)
        else:
            return 0
    return max(0, old - path.stat().st_size)


def compress_pdf(path: Path) -> int:
    if not pikepdf:
        return 0
    old = path.stat().st_size
    tmp = path.with_suffix(".tmp.pdf")
    try:
        with pikepdf.open(path) as pdf:
            if "/Metadata" in pdf.Root:
                del pdf.Root.Metadata
            pdf.save(tmp, compress_streams=True, object_stream_mode=pikepdf.ObjectStreamMode.generate)
        if tmp.stat().st_size < old:
            tmp.replace(path)
            return old - path.stat().st_size
        tmp.unlink()
    except Exception:
        if tmp.exists():
            tmp.unlink()
    return 0


def process_folder(folder: Path) -> tuple[int, int]:
    if folder.name in SKIP:
        return 0, 0
    saved = 0
    count = 0
    for f in folder.rglob("*"):
        if not f.is_file():
            continue
        try:
            if f.suffix.lower() in {".jpg", ".jpeg", ".png", ".webp"} and f.stat().st_size >= MIN_IMAGE:
                s = compress_image(f)
                if s:
                    saved += s
                    count += 1
            elif f.suffix.lower() == ".pdf" and f.stat().st_size >= MIN_PDF:
                s = compress_pdf(f)
                if s:
                    saved += s
                    count += 1
        except OSError:
            pass
    return count, saved


def main():
    base = Path(__file__).resolve().parent
    total_saved = 0
    total_count = 0
    rows = []
    for root_name in ROOTS:
        root = base / root_name
        if not root.is_dir():
            continue
        for folder in sorted(root.iterdir()):
            if not folder.is_dir():
                continue
            before = sum(f.stat().st_size for f in folder.rglob("*") if f.is_file())
            c, s = process_folder(folder)
            if s:
                rows.append((folder.name, c, s / 1024 / 1024, before / 1024 / 1024))
            total_count += c
            total_saved += s
    print(f"=== Compressed {total_count} files, saved {total_saved/1024/1024:.1f} MB ===")
    for name, c, smb, bmb in sorted(rows, key=lambda x: -x[2]):
        print(f"  {name:30}  {c:4} files  {smb:7.1f} MB saved  (was {bmb:.1f} MB)")


if __name__ == "__main__":
    main()
