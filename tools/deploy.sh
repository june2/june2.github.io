#!/bin/bash

WORK_DIR=$(dirname $(dirname $(realpath "$0")))

bash ${WORK_DIR}/tools/init.sh
git add -A
git commit -m 'update'
git push


