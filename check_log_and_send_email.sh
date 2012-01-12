#!/bin/bash 

check_str='your_check_str'

mv new old
grep $check_str your_logfile > new

diff old new

if  [ $? -eq 1 ]  ; then
  sendmail -oi -t << EOF
From: [your_email]
To: [your_email]
Subject: ALERT $check_str

`date`
EOF

   echo 'send a email'
else 
   echo 'nothing'
fi
