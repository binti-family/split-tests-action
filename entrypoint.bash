#!/bin/bash

set -o noglob

SPLIT_FILES=$(/usr/bin/split_tests $@)
echo "::set-output name=split-files::$SPLIT_FILES"
