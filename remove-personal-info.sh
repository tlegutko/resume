#!/bin/sh

sed -e 's/\(^.*\\fa[^G].*} \).*\\\\/\1personal info\\\\/g' \
    -e 's/I\x27m applying to {.*} with/I\x27m applying to {\\bfseries Your Company} with/' \
    resume.tex > resume-no-personal-info.tex
pdflatex resume-no-personal-info
pdflatex resume-no-personal-info