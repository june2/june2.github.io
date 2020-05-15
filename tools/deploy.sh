#!/bin/bash

echo ${WORK_DIR}
bash build.sh
git add -A
git commit -m 'update'
git push


