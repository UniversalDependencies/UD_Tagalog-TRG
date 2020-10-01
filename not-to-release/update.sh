#!/bin/bash
CAIRO=../../cairo
perl $CAIRO/extract_language.pl tl < $CAIRO/shopen-examples.conllu | perl -pe '$_ = "" if(m/^\# Tagalog/)' > shopen-tl.conllu

