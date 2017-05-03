#!/bin/bash
set -e

rm ../*.html 2>/dev/null || true
rm -r ../author 2>/dev/null || true
rm -r ../category 2>/dev/null || true
rm -r ../rss 2>/dev/null || true
rm -r ../theme 2>/dev/null || true

pelican --relative-urls --ignore-cache \
  --theme-path template/blue-penguin \
  -o .. content

git add ../*.html
