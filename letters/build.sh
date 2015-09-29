#!/bin/bash

md=$(ls -t *.md |head -n 1)
pdf=$(echo $md |sed 's/^\(.*\)\.md$/\1.pdf/')

pandoc "$md" -s -Vlang=german -o "$pdf"
