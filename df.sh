#!/bin/bash
date
df -h > /home/jk/logs/cron/df/df.20`date +"%y%m%d"`.txt
cat /home/jk/logs/cron/df/df.20`date +"%y%m%d"`.txt | grep Filesystem > /home/jk/df.20`date +"%y%m%d"`.txt
# cat / /home/jk/logs/cron/df/df.20`date +"%y%m%d"`.txt | grep 1812 >>  /home/jk/df.20`date +"%y%m%d"`.txt