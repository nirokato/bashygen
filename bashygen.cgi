#!/bin/sh

dict=/meta/www/n/niro/assets/allwords.dat

unset bwords
mapfile -t bwords <<< "$(grep '^[b,B][a-Z]' $dict)"
bindex=$(/usr/bin/shuf -i 1-$((${#bwords[@]} - 1)) -n 1)

unset awords
mapfile -t awords <<< "$(grep '^[a,A][a-Z]' $dict)"
aindex=$(/usr/bin/shuf -i 1-$((${#awords[@]} - 1)) -n 1)

unset swords
mapfile -t swords <<< "$(grep '^[s,S][a-Z]' $dict)"
sindex=$(/usr/bin/shuf -i 1-$((${#swords[@]} - 1)) -n 1)

unset hwords
mapfile -t hwords <<< "$(grep '^[h,H][a-Z]' $dict)"
hindex=$(/usr/bin/shuf -i 1-$((${#hwords[@]} - 1)) -n 1)

unset ywords
mapfile -t ywords <<< "$(grep '^[y,Y][a-Z]' $dict)"
yindex=$(/usr/bin/shuf -i 1-$((${#ywords[@]} - 1)) -n 1)

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

echo "Content-type: text/html"
echo ""
echo "<html>"
echo "<head>"
echo "<title>BASHy Reverse Acronym Generator</title>"
echo "</head>"
echo '<body style="text-align:center">'
echo '<div style="width:90%; height:40%; position: absolute; top:0; bottom:0; left: 0; right: 0; margin:auto;">'
echo '<span style="font-size: 6.7vw"><a href="bashy.cgi">BASHy-nym</a></span>'
echo '<br><span style="font-size: 3.5vw">'$bigbword $bigaword $bigsword $bighword $bigyword'</span>'
echo "</div>"
echo "</body>"
echo "</html>"
