#!/usr/bin/env bash
set -e

INDIR="$1"
OUTDIR="$2"

if [[ -z "$INDIR" || -z "$OUTDIR" ]]; then
    echo "Usage: $0 <input_folder> <output_folder>"
    exit 1
fi

INDIR="${INDIR%/}"
OUTDIR="${OUTDIR%/}"

# walk directory tree safely
find "$INDIR" -type f -name '*.png' | while IFS= read -r src; do
    rel="${src#$INDIR/}"
    dst="$OUTDIR/$rel"

    mkdir -p "$(dirname "$dst")"

    echo "Processing: $rel"

    # working temp file
    work=$(mktemp)
    cp "$src" "$work"

    # Step 1: metadata strip + normalize
    mogrify -strip -depth 8 "$work"

    # Step 2: lossless recompress
    optipng -o7 -out "$dst" "$work" >/dev/null

    # Step 3: optional extra zopflipng pass
    tmp2=$(mktemp)
    if zopflipng -m --iterations=300 "$dst" "$tmp2" >/dev/null; then
        mv -f "$tmp2" "$dst"
    else
        rm -f "$tmp2"
    fi

    rm -f "$work"
done

