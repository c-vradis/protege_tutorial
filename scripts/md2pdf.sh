#!/bin/bash
declare -a files=("SW_LOD_Presentation" "SW_LOD_Protege_Tutorial" "README")

for ((i=0;i<${#files[@]};i++)); do
pandoc --pdf-engine=xelatex --toc=false --dpi=150 --columns=120 -V mainfont="HelveticaNeue" -V monofont="AndaleMono" source_files/${files[i]}.md -o 2025/${files[i]}.pdf
done