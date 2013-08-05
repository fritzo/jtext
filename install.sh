#!/bin/sh

sudo apt-get install -y\
	texlive texlive-pictures texlive-latex-extra texlive-math-extra \
	xfig transfig \
	#

echo 'Adding path to .bashrc'
echo "export PATH=\$PATH:$PWD/bin" >> ~/.bashrc

echo 'Adding .sty files to ~/texmf/tex/latex'
test -e ~/texmf || mkdir ~/texmf
test -e ~/texmf/tex || mkdir ~/texmf/tex
test -e ~/texmf/tex/latex || mkdir ~/texmf/tex/latex
for i in `ls *.sty`
do
	cp $i ~/texmf/tex/latex/
done
