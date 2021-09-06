#!/bin/bash

NAME=
DATE=

for md in $(ls *.md); do
    ARTICLE_NAME=$(echo $md | sed 's/.md//')
    DATE=$(date --iso-8601=seconds)
    sed '1 s/^/---\ntitle: "'$ARTICLE_NAME'"\ndate: "'$DATE'"\ndraft: "false"\n---\n\n/' $md
#   sed '2s/^/second line \n/' $md
#   sed -i '1i\use my_db;' "$sql"
    cat $md
    echo ""
done