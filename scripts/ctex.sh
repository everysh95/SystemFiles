#!/bin/sh

#----tex->pdfに変換するスクリプト.----
BTAR=${1}
REGEX="s/\.tex$//g"
MTAR=`echo "${BTAR}"|sed -e "${REGEX}"` #~.texの~の部分を抽出.
platex $BTAR
dvipdfm ${MTAR}.dvi
