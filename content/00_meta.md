---
link-citations: true
lang: en-US
header-includes:
    - \usepackage{graphicx}
    - \usepackage{wrapfig}
    - \usepackage{glossaries}
    - \makenoidxglossaries
    - \include{glossary}
    - \graphicspath{ {./content/images} }
    - \setcounter{secnumdepth}{3}
    - \usepackage{tikz}
    - \usepackage{pgfplots}
    - \usepackage{rotating}
    - \usepackage{lscape}
    - \usepackage{cancel}
    - \usepackage{array,ragged2e}
    - \usepackage{tabularray}
    - \usepackage{ifsym}
    - \usepackage{soul}
include-after:
    - \newpage
    - \listoffigures
    - \newpage
    - \listoftables
    - \newpage
    - \printnoidxglossary[sort=word]
---


\thispagestyle{empty}
\newpage

\thispagestyle{empty}
\tableofcontents
