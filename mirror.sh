#!/bin/bash

SOURCE_URL="https://www.marxists.org/chinese/index.html"
TARGET_DIR="mirror"

mkdir -p $TARGET_DIR
touch mirror/www.marxists.org/chinese/index.html

wget --recursive \
    --page-requisites \
    --mirror \
    --no-check-certificate \
    --convert-links \
    --adjust-extension \
    --no-parent \
    --random-wait \
    --continue \
    -L \
    -e robots=off \
    --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36" \
    --timestamping \
    --span-hosts \
    $SOURCE_URL \
    -P $TARGET_DIR
