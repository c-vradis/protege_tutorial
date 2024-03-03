#!/bin/bash
declare -a files=("01_Εισαγωγή" "02_About_Harokopio" "03_Tutorial" "README")

for ((i=0;i<${#files[@]};i++)); do
pandoc --pdf-engine=xelatex --toc=false --dpi=150 --columns=120 -V mainfont="HelveticaNeue" -V monofont="AndaleMono" ${files[i]}.md -o ${files[i]}.pdf
done