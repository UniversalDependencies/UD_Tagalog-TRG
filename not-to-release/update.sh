#!/bin/bash
CAIRO=../../cairo
perl $CAIRO/extract_language.pl tl < $CAIRO/shopen-examples.conllu | perl -pe 's/^\# sent_id = /\# sent_id = shopen-/; if(m/^\# Tagalog/) { $_ = "" }' > shopen-tl.conllu

