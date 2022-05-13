#! /bin/bash

# More information: https://github.com/KuhlTime/hsd-markdown-thesis/wiki/Automatically-download-BibTeX-from-MyBib
# curl "https://www.mybib.com/download/z963B2/bibtex" \
#  -H 'Cookie: _ga=GA1.2.408698403.1647681539; myb-started=1; myb-tooltips={%22categoriesToHide%22:[]%2C%22tooltipsToHide%22:[{%22tooltipId%22:%22addReferenceBtn%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22projects%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22stylesBtn%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22downloadBtn%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22referenceList%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22projects_folders%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22newReferenceForm%22%2C%22category%22:%22intro%22}%2C{%22tooltipId%22:%22reorderReferences%22%2C%22category%22:%22intro%22}]}; myb-settings={%22dark-mode-activated%22:false%2C%22lastSelectedProject%22:%22z963B2%22%2C%22wideModeIsEnabled%22:true%2C%22lastSelectedStyleId%22:%22default-harvard%22}; myb=89263161bd564c5cbb5b16ab252b62f1; G_ENABLED_IDPS=google; _gid=GA1.2.472061591.1652084338' -o bibliography.bib

for f in content/*.md; do cat $f; echo "\n\\\newpage\n"; done > content.md
pandoc -s -V papersize:a4 --highlight-style my-one-light.theme --number-sections content.md --resource-path content --citeproc --bibliography=bibliography.bib -M reference-section-title=References --csl=style.csl --pdf-engine=xelatex --lua-filter pandoc-gls.lua -o content.pdf
echo "✅ Finished Compilation"

