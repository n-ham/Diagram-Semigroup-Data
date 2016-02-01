#!/usr/bin/env bash

#
# converts all pdfs in the current directory to pngs
#

for file in *.pdf
do
	echo "converting $file to ${file::-4}.png"
	pdftoppm -rx 300 -ry 300 -png $file ${file::-4}
	echo "mving ${file::-4}-1.png to ${file::-4}.png"
	mv ${file::-4}-1.png ${file::-4}.png
done
