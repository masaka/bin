#!/bin/bash 

check_str='your_check_str'

mv new old
grep $check_str your_logfile > new

diff old new > diff_result.txt

if  [ $? -eq 1 ]  ; then
  sendmail -oi -t << EOF
From: [your_email]
To: [your_email]
Subject: updated `date +"%Y/%m/%d %p %I:%M:%S"`

`cat diff_result.txt`
EOF

   echo 'send a email'
else 
   echo 'nothing'
fi

rm diff_result.txt
