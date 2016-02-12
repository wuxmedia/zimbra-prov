#!/bin/bash
#zimbra prov command list creating accounts

while IFS='' read -r line || [[ -n "$line" ]]; do
ACCT=$(echo "$line" | cut -d " " -f3)
NAME=$(echo "$line" | cut -d " " -f1,2)
GN=$(echo "$line" | cut -d " " -f1)
SN=$(echo "$line" | cut -d " " -f2)
PASS="Ewi3Aehah4"
echo "createAccount $ACCT $PASS displayName '$NAME' givenName $GN sn $SN" 
echo "ma $ACCT zimbraPasswordMustChange TRUE"
done <"$1"
