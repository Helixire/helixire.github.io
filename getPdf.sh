#!/bin/sh

wkhtmltopdf https://helixire.github.io/\?lang\=fr tmp.pdf && pdftk tmp.pdf cat 1 output cv_fr.pdf
wkhtmltopdf https://helixire.github.io/\?lang\=en tmp.pdf && pdftk tmp.pdf cat 1 output cv_en.pdf
rm tmp.pdf
