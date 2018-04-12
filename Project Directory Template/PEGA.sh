#!/bin/sh
echo "...Loading Project Employed Generation Assembly (PEGA)."
echo "...Please make sure you are connected to the Internet."
echo "...Please enter a project name."
read PROJECT
echo "...Creating project ${PROJECT}."

mkdir -v ${PROJECT}
cd ${PROJECT}
mkdir -v bin data doc images release resources
cd bin/
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/HelloWorld.exe
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/Makefile
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/README.txt
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/main.cpp
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/program.cpp
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/program.h
cd -v ../data
wget -v https://github.com/torodean/Antonius-Templates/tree/master/Project%20Directory%20Template/data/README.txt
cd -v ../doc
mkdir -v literature manual notes
cd -v literature
wget https://github.com/torodean/Antonius-Templates/tree/master/Project%20Directory%20Template/doc/literature/README.txt
cd -v ../manual
mkdir -v TeX_files images
wget -v https://github.com/torodean/Antonius-Templates/tree/master/Project%20Directory%20Template/doc/manual/README.txt
wget -v https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/Manual.pdf
wget -v https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/Manual.tex
cd -v TeX_files
wget https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/TeX_files/AppendixI.tex
wget https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/TeX_files/chapter.tex
wget https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/TeX_files/frontmatter.tex
wget https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/TeX_files/packages.tex
wget https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/TeX_files/references.tex
wget https://github.com/torodean/Antonius-Templates/blob/master/LaTeX%20Manual%20Template/TeX_files/settings.text



