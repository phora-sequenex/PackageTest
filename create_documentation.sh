#!/bin/bash

DOCS="docs"
BASEPATH="PackageTest"
TARGET="PackageTest"

echo "Creating documentation in $DOCS for target $TARGET and basepath $BASEPATH"

swift package --allow-writing-to-directory "$DOCS" \
    generate-documentation --target "$TARGET" \
    --disable-indexing \
    --transform-for-static-hosting \
    --hosting-base-path "$BASEPATH" \
    --output-path "$DOCS"
