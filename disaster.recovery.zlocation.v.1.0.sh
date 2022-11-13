
#!/bin/bash
# Connects to my home/local network on one public facing OpenSSH server, then SSH's to another OpenSSH server on the LAN (virtual machine/lxc) which has file server volumes mounted in /mnt, so it can do a tree -afhq command of /mnt/ and save every file name and tree structure in a text file which is then compressed and stored on mounted Amazon EFS storage.
# WAN addresses and LAN hostnames are obfuscated/anonymized in this github file.
# Script assumes you have passwordless logins with SSH keys (ssh-keygen -t rsa) (&) (ssh-copy-id user@fqdn) set up
ssh -tt user@DOMAIN.TLD "ssh -tt user@HOSTNAME 'cd /mnt/; tree -afhq'" >> ~/temporary/HOSTNAME.tree.afhq.`date +"%y%m%d"`.txt
p7zip -a /mnt/amazonefsmount/tree/HOSTNAME.tree.afhq.`date +"%y%m%d"`.7z ~/temporary/HOSTNAME.tree.afhq.`date +"%y%m%d"`.txt
find ~/temporary/* -mtime +3 -exec rm {} \;
