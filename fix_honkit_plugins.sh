#!/bin/sh

cd $(dirname "$0")

sed -i 's/"3.\*"/"*"/g' ./node_modules/gitbook-plugin-page-toc/package.json
