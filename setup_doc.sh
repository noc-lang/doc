#!/bin/bash

mkdir -p include_html

md_paths=$(echo doc/wiki/*/*.md doc/wiki/wiki_desc.md doc/library_desc.md)

echo "Converting all Markdown snippets in HTML..."
for i in $md_paths; do
    if [[ $i == "doc/library_desc.md" ]]; then
        delim_num=2
    elif [[ $i == "doc/wiki/wiki_desc.md" ]]; then
        delim_num=3
    else
        delim_num=4
    fi
    md_filename=$(echo $i | cut -d "." -f 1 | cut -d "/" -f $delim_num).html
    pandoc -t html -f markdown $i -o include_html/$md_filename
    echo -e "'"$i"'" "->" "'"include_html/$md_filename"'" "\u001b[32mgenerated.\u001b[0m\n"
done

echo "Building the Noc documentation..."
noc build_doc.noc
mkdir -p noc_documentation
mv noc.html index.html
mv *.html noc_documentation
echo -e "\u001b[32mThe Noc documentation was built successfully (check the 'noc_documentation/index.html' file).\u001b[0m"