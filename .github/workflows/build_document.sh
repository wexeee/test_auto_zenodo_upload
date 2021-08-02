#!/bin/bash
version=`git tag`
echo "${version}"
pandoc document.MD -t html -o - | pandoc -f html --pdf-engine=xelatex -V geometry:margin=1in -o "my_built_document_${version}.pdf"