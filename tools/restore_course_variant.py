#!/usr/bin/env python3
"""Reassemble a recorded project variant from a locally authorized source file."""
import argparse
import hashlib
import json
from pathlib import Path


def digest(data):
    return hashlib.sha256(data.encode("utf-8")).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("baseline", type=Path, help="Exact version obtained through authorized access")
    parser.add_argument("delta", type=Path, help="Published incremental variant record")
    parser.add_argument("output", type=Path, help="New local file, in a separate working copy")
    args = parser.parse_args()

    reference = args.baseline.read_bytes().decode("utf-8")
    record = json.loads(args.delta.read_text(encoding="utf-8"))
    if digest(reference) != record["baseline_sha256"]:
        # Course downloads may use CRLF while the audited Git object uses LF.
        normalized = reference.replace("\r\n", "\n")
        if digest(normalized) != record["baseline_sha256"]:
            parser.error("baseline differs from the recorded course source version")
        reference = normalized
    pieces = []
    for edit in record["edits"]:
        if isinstance(edit, str):
            pieces.append(edit)
            continue
        start, stop = edit
        if not 0 <= start <= stop <= len(reference):
            parser.error("invalid source range in delta")
        pieces.append(reference[start:stop])
    result = "".join(pieces)
    if digest(result) != record["variant_sha256"]:
        parser.error("assembled result differs from the recorded project version")
    with args.output.open("xb") as output:
        output.write(result.encode("utf-8"))


if __name__ == "__main__":
    main()
