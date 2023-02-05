#!/bin/bash
noc build_doc.noc
mkdir -p noc_documentation
mv noc.html index.html
mv *.html noc_documentation