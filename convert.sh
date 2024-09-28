#!/bin/bash

# 引数の数を確認
if [ $# -ne 1 ]; then
    echo "Usage: $0 <markdown file>"
    exit 1
fi
SRCFILE=$1
DESTFILE=$(basename -s .md ${SRCFILE}).pdf

docker run --rm -v $PWD:/data frozenbonito/pandoc-eisvogel-ja:plantuml \
   -N \
    --toc \
    --toc-depth=4 \
    -F pandoc-crossref  \
    -V table-use-row-colors=true \
    -V listings-disable-line-numbers=true --listings  -M listings  \
    -o /data/${DESTFILE} \
    -d /data/config.yaml \
    /data/${SRCFILE}

# sudo chown `id -u`:`id -g` ${DESTFILE}

# 所有者を変更する
docker run --rm -v $PWD:/data busybox chown `id -u`:`id -g` /data/${DESTFILE}
