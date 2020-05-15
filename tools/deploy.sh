#!/bin/bash

echo "$(dirname)"
bash build.sh
git add -A
git commit -m 'update'
git push


