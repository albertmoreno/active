#!/usr/bin/env python3
"""Aggressive pass: large PNG -> JPEG with reference updates; PDF re-save via pymupdf."""
from __future__ import annotations

import re
import sys
from pathlib import Path

from PIL import Image

try:
    import fitz  # pymupdf
except ImportError:
    fitz = None

TEXT_EXT = {".html", ".htm", ".css", ".js"}
MIN_PNG = 800_000
MIN_PDF = 2_000_000


def folder_refs_text(folder: Path) -> str:
    parts = []
    for f in folder.rglob("*"):
        if f.is_file() and f.suffix.lower() in TEXT_EXT:
            try:
                parts.append(f.read_text(encoding="utf-8", errors="ignore"))
            except OSError:
                pass
    return "\n".join(parts)


def update_references(folder: Path, old_name: str, new_name: str) -> None:
    for f in folder.rglob("*"):
        if not f.is_file() or f.suffix.lower() not in TEXT_EXT:
            continue
        try:
            text = f.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            continue
        if old_name in text:
            f.write_text(text.replace(old_name, new_name), encoding="utf-8")


def png_to_jpg(path: Path, quality: int = 86) -> Path | None:
    old = path.stat().st_size
    jpg = path.with_suffix(".jpg")
    with Image.open(path) as im:
        if im.mode in ("RGBA", "LA"):
            bg = Image.new("RGB", im.size, (255, 255, 255))
            bg.paste(im, mask=im.split()[-1])
            im = bg
        else:
            im = im.convert("RGB")
        w, h = im.size
        if max(w, h) > 1600:
            im.thumbnail((1600, 1600), Image.Resampling.LANCZOS)
        im.save(jpg, quality=quality, optimize=True)
    if jpg.stat().st_size < old * 0.7:
        return jpg
    jpg.unlink(missing_ok=True)
    return None


def compress_pdf(path: Path) -> int:
    if not fitz:
        return 0
    old = path.stat().st_size
    tmp = path.with_suffix(".tmp.pdf")
    try:
        doc = fitz.open(path)
        doc.save(tmp, garbage=4, deflate=True, clean=True)
        doc.close()
        if tmp.stat().st_size < old * 0.95:
            saved = old - tmp.stat().st_size
            tmp.replace(path)
            return saved
        tmp.unlink()
    except Exception:
        tmp.unlink(missing_ok=True)
    return 0


def process_folder(folder: Path) -> tuple[int, int]:
    saved = 0
    count = 0
    all_text = folder_refs_text(folder)

    for png in sorted(folder.rglob("*.png")):
        if png.stat().st_size < MIN_PNG:
            continue
        if png.name not in all_text:
            continue
        jpg = png_to_jpg(png)
        if jpg:
            update_references(folder, png.name, jpg.name)
            saved += png.stat().st_size - jpg.stat().st_size
            png.unlink()
            count += 1

    for pdf in sorted(folder.rglob("*.pdf")):
        if pdf.stat().st_size < MIN_PDF:
            continue
        s = compress_pdf(pdf)
        if s:
            saved += s
            count += 1

    return count, saved


def main():
    base = Path(__file__).resolve().parent
    targets = sys.argv[1:] if len(sys.argv) > 1 else [
        "events_arxivats/hpsp18-whs2",
        "events_arxivats/matener2018",
        "events_arxivats/energystorage2014",
        "events_arxivats/ess2011",
        "events_arxivats/orgi2015",
        "events_arxivats/self2016",
        "projects_arxivats/nanoselect",
        "projects_arxivats/madamechatelet",
    ]
    total_s = 0
    total_c = 0
    for t in targets:
        folder = base / t
        if not folder.is_dir():
            continue
        c, s = process_folder(folder)
        if s:
            print(f"{t:40}  {c:3} items  {s/1024/1024:7.1f} MB")
        total_s += s
        total_c += c
    print(f"TOTAL: {total_c} items, {total_s/1024/1024:.1f} MB saved")


if __name__ == "__main__":
    main()
