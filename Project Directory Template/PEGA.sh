#!/bin/sh
echo "...Loading Project Employed Generation Assembly (PEGA)."
echo "...Created by Antonius Torode."
echo "...Please make sure you are connected to the Internet."
echo "...Please enter a project name."
read PROJECT
echo "...Creating project ${PROJECT}."

mkdir -v ${PROJECT}
cd ${PROJECT}
mkdir -v bin data doc images release resources
cd bin/
wget -v https://github.com/torodean/Antonius-Templates/blob/master/Project%20Directory%20Template/bin/HelloWorld.exe
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/bin/Makefile
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/bin/README.txt
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/bin/main.cpp
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/bin/program.cpp
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/bin/program.h
cd ../data/
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/data/README.txt
cd ../doc/
mkdir -v literature manual notes
cd literature/
wget https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/doc/literature/README.txt
cd ../manual/
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/doc/manual/README.txt
wget -v https://github.com/torodean/Antonius-Templates/raw/master/LaTeX%20Manual%20Template/Manual.pdf
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/Manual.tex
mkdir -v TeX_files images
cd TeX_files/
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/TeX_files/AppendixI.tex
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/TeX_files/chapter.tex
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/TeX_files/frontmatter.tex
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/TeX_files/packages.tex
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/TeX_files/references.tex
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/LaTeX%20Manual%20Template/TeX_files/settings.tex
cd ../images/
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/doc/manual/images/README.txt
wget -v https://github.com/torodean/Antonius-Templates/raw/master/LaTeX%20Manual%20Template/images/man_cover.png
cd ../../notes/
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/doc/notes/README.txt
cd ../../images
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/images/README.txt
cd ../release
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/release/README.txt
cd ../resources
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/resources/README.txt
cd ../
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/.gitignore
wget -v https://raw.githubusercontent.com/torodean/Antonius-Templates/master/Project%20Directory%20Template/README.txt
wget -v "https://raw.githubusercontent.com/torodean/Antonius-Personal/master/Antonius%E2%80%99%20General%20Purpose%20License%20(AGPL)"



