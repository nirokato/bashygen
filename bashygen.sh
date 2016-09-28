#!/usr/bin/env bash

# Written for SDF Meta Array

unset bwords
mapfile -t bwords <<< "$(grep '^[b,B][a-Z]' /meta/n/niro/bin/allwords.dat)"
bindex=$(shuf -i 1-$((${#bwords[@]} - 1)) -n 1)

unset awords
mapfile -t awords <<< "$(grep '^[a,A][a-Z]' /meta/n/niro/bin/allwords.dat)"
aindex=$(shuf -i 1-$((${#awords[@]} - 1)) -n 1)

unset swords
mapfile -t swords <<< "$(grep '^[s,S][a-Z]' /meta/n/niro/bin/allwords.dat)"
sindex=$(shuf -i 1-$((${#swords[@]} - 1)) -n 1)

unset hwords
mapfile -t hwords <<< "$(grep '^[h,H][a-Z]' /meta/n/niro/bin/allwords.dat)"
hindex=$(shuf -i 1-$((${#hwords[@]} - 1)) -n 1)

unset ywords
mapfile -t ywords <<< "$(grep '^[y,Y][a-Z]' /meta/n/niro/bin/allwords.dat)"
yindex=$(shuf -i 1-$((${#ywords[@]} - 1)) -n 1)

bword=${bwords[bindex]}
bigbword="$(tr '[:lower:]' '[:upper:]' <<< ${bword:0:1})${bword:1}"

aword=${awords[aindex]}
bigaword="$(tr '[:lower:]' '[:upper:]' <<< ${aword:0:1})${aword:1}"

sword=${swsords[sindex]}
bigsword="$(tr '[:lower:]' '[:upper:]' <<< ${sword:0:1})${sword:1}"

hword=${hwords[hindex]}
bighword="$(tr '[:lower:]' '[:upper:]' <<< ${hword:0:1})${hword:1}"

yword=${ywords[yindex]}
bigyword="$(tr '[:lower:]' '[:upper:]' <<< ${yword:0:1})${yword:1}"


echo $bigbword $bigaword $bigsword $bighword $bigyword
