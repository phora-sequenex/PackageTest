#!/bin/bash

DOCS="docs/"
BASEPATH="phora-sequenex/PackageTest"
TARGET="PackageTest"

swift package --allow-writing-to-directory "$DOCS" \
    generate-documentation --target "$TARGET" \
    --disable-indexing \
    --transform-for-static-hosting \
    --hosting-base-path "$BASEPATH" \
    --output-path "$DOCS"
