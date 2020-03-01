#!/bin/bash
delete=yes
for file in /media/jk/9141-85E8/dus/*.txt
do
    if [ $delete = yes ]
                then rm -f $file; delete=no
            else delete=yes
        fi
done