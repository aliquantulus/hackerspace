#!/bin/bash
#=============================================================================
# Name : daily.disk.usage.script.sh
# Author : Aliquantulus
# Version : 0.01
# Date created: 16.12.2018
# Date last edited: 16.12.2018
# Creative Commons Licence : Attribution 3.0 Norway (CC BY 3.0 NO)
# Description : Daily summary of disk usage at home
#=============================================================================
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
# df -h | grep 'Filesystem\|video\|ds509' >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep Filesystem >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep video  >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep ds509v1 >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep ds509v2 >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep ds509v4 >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep ds509v3 >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/1812/volume1/video/tv >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/1812/volume1/video/tv/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/509/ds509v1/video/tv >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v1/video/tv/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/509/ds509v2/video/tv >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v2/video/tv/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/509/ds509v4/video/tv >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v4/video/tv/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/1812/volume1/video/movies >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/1812/volume1/video/movies/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/509/ds509v2/video/movies >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v2/video/movies/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/`date +"%y%m%d"`.t                                                      xt
du -sh /mnt/509/ds509v4/video/movies >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v4/video/movies/* | sort -hr >> /home/jk/du.logging/`date +"%y%m%d"`.txt
du -sh /mnt/1812/volume1/video/tv >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/1812/volume1/video/tv/* | sort -hr >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v1/video/tv >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v1/video/tv/* | sort -hr >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v2/video/tv >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v2/video/tv/* | sort -hr >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v4/video/tv >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v4/video/tv/* | sort -hr >> /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/tv.`date +"%y%m%d"                                                      `.txt
df -h | grep Filesystem >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
df -h | grep video  >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
df -h | grep ds509v1 >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
df -h | grep ds509v2 >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
df -h | grep ds509v4 >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
df -h | grep ds509v3 >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/tv.`date +"%y%m%d"                                                      `.txt
cat /home/jk/du.logging/temp.tv.`date +"%y%m%d"`.txt | sort -hr >> /home/jk/du.logging/tv.`date +"%y%m%d"`.txt
du -sh /mnt/1812/volume1/video/movies >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/1812/volume1/video/movies/* | sort -hr >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v1/video/movies >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v1/video/movies/* | sort -hr >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v2/video/movies >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v2/video/movies/* | sort -hr >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v4/video/movies >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
du -sh /mnt/509/ds509v4/video/movies/* | sort -hr >> /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/movies.`date +"%y%                                                      m%d"`.txt
# df -h | grep 'Filesystem\|video\|ds509' >> /home/jk/du.logging/`date +"%y%m%d"`.txt
df -h | grep Filesystem >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt
df -h | grep video  >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt
df -h | grep ds509v1 >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt
df -h | grep ds509v2 >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt
df -h | grep ds509v4 >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt
df -h | grep ds509v3 >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt
echo "=============================================================================" >> /home/jk/du.logging/movies.`date +"%y%                                                      m%d"`.txt
cat /home/jk/du.logging/temp.movies.`date +"%y%m%d"`.txt | sort -hr >> /home/jk/du.logging/movies.`date +"%y%m%d"`.txt