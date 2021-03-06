#!/bin/bash
#Copyright 2014 Paul R. Dixon

#Dynamic decoder which operates on offline features
#Mostly just for testing

../src/bin/dcd-recog \
  --word_symbols_table=words.txt \
  --decoder_type=hmm_lattice \
  --beam=15 \
  --acoustic_scale=0.1 \
  --fst_reset_period=1 \
  --early_mission=false \
  graph_test_tgsmall/arcs.far \
  graph_test_tgsmall/la.C.det.L.fst,graph_test_tgsmall/G.fst \
  ark:test-clean.ark  recog-dynamic.far
