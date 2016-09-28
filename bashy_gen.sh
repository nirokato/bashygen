#!/bin/bash

# Written for SDF Cluster

unset bwords; mapfile -t bwords <<< "$(grep '^b[A-z]' ./assets/allwords.dat)"
bindex=$(jot -r 1 0  $((${#bwords[@]} - 1)));

unset awords; mapfile -t awords <<< "$(grep '^[a,A][A-z]' ./assets/allwords.dat)"
aindex=$(jot -r 1 0  $((${#awords[@]} - 1)));

unset swords; mapfile -t swords <<< "$(grep '^[s,S][A-z]' ./assets/allwords.dat)"
sindex=$(jot -r 1 0  $((${#swords[@]} - 1)));

unset hwords; mapfile -t hwords <<< "$(grep '^[h,H][A-z]' ./assets/allwords.dat)"
hindex=$(jot -r 1 0  $((${#hwords[@]} - 1)));

unset ywords; mapfile -t ywords <<< "$(grep '^[y,Y][A-z]' ./assets/allwords.dat)"
yindex=$(jot -r 1 0  $((${#ywords[@]} - 1)));

echo ${bwords[bindex]} ${awords[aindex]} ${swords[sindex]} ${hwords[hindex]} ${ywords[yindex]}
