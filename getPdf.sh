#!/bin/bash

URL=https://helixire.github.io/

if [[ $1 ]]; then
  URL=$1
fi

wkhtmltopdf $URL\?lang\=fr tmp.pdf && pdftk tmp.pdf cat 1 output cv_fr.pdf
wkhtmltopdf $URL\?lang\=en tmp.pdf && pdftk tmp.pdf cat 1 output cv_en.pdf
rm tmp.pdf
