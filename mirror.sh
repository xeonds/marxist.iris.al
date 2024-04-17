#!/bin/bash

SOURCE_URL="https://www.marxists.org/chinese/index.html"
TARGET_DIR="mirror"

mkdir -p $TARGET_DIR

wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $SOURCE_URL -P$TARGET_DIR

