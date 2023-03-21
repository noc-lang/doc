#!/bin/bash

convert_md_snippets_to_html() {
    echo -e "Converting all Markdown snippets in HTML...\n"
    mkdir -p include_html/$1

    if [[ $1 == "wiki" || $1 == "nocdoc" ]]; then
        md_paths=$(echo doc/$1/content/home.md doc/$1/content/*/*.md)
    else
        md_paths=$(echo doc/$1/content/home.md)
    fi

    for i in $md_paths; do
        if [[ $i == "doc/$1/content/home.md" ]]; then
            delim_num=4
        else
            delim_num=5
        fi
        md_filename=$(echo $i | cut -d "." -f 1 | cut -d "/" -f $delim_num).html
        pandoc -t html -f markdown $i -o include_html/$1/$md_filename
        echo -e "'"$i"'" "->" "'"include_html/$1/$md_filename"'" "\u001b[32mgenerated.\u001b[0m\n"
    done
}

build_doc() {
    echo "Building the '"$1"' documentation..."

    convert_md_snippets_to_html $1
    noc generate.noc $1

    if [[ $1 == "wiki" ]]; then
        filename=$1
    elif [[ $1 == "library" ]]; then
        filename="noc"
    else
        filename="nocdoc"
    fi

    mv "$filename.html" "index.html"

    if [[ ! $1 == "wiki" ]]; then
        mkdir -p manual/$1
        mv *.html manual/$1
    else
        mv *.html manual
    fi

}

echo -e "Building the Noc Manual...\n"
mkdir -p manual

echo -e "Building the Noc documentation...\n"
build_doc "wiki"
build_doc "library"
build_doc "nocdoc"

rm -rf include_html

echo -e "\u001b[32mThe Noc documentation was built successfully (check the 'manual/index.html' file).\u001b[0m"