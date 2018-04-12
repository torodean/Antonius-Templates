#!/bin/sh
echo "...Loading Project Employed Generation Assembly (PEGA)."
echo "...Please make sure you are connected to the Internet."
echo "...Please enter a project name."
read PROJECT
echo "...Creating project ${PROJECT}."

mkdir -v ${PROJECT}
cd ${PROJECT}
mkdir -v bin data doc images release resources

