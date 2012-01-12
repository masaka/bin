#!/bin/bash

domain=$1
dnssv1=$2
dnssv2=$2

echo "domain  is :" $domain
echo "dnsserver1 is :" $dnssv1
echo "dnsserver2 is :" $dnssv2


tmp1=/tmp/.domain1.$$
tmp2=/tmp/.domain2.$$


host -a  $domain $dnssv1 > $tmp1
host -a  $domain $dnssv2 > $tmp2


sdiff -w 160 $tmp1 $tmp2


rm $tmp1 $tmp2
