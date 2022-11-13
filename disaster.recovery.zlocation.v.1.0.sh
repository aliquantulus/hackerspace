
#!/bin/bash
# Connects to my home/local network on one public facing OpenSSH server, then SSH's to another OpenSSH server on the LAN (virtual machine/lxc) which has file server volumes mounted in /mnt, so it can do a tree -afhq command of /mnt/ and save every file name and tree structure in a text file which is then compressed and stored on mounted Amazon EFS storage.
# WAN addresses and LAN hostnames are obfuscated/anonymized in this github file.
# Script assumes you have passwordless logins with SSH keys (ssh-keygen -t rsa) (&) (ssh-copy-id user@fqdn) set up

# SSH's and runs 'tree -afhq' on last machine with the mounts and outputs to a temporary folder (generates a huge file)
ssh -tt user@DOMAIN.TLD "ssh -tt user@HOSTNAME 'cd /mnt/; tree -afhq'" >> ~/temporary/HOSTNAME.tree.afhq.`date +"%y%m%d"`.txt

# Compressing the file (980 MB becomes 39 MB) and moves it to Amazon EFS storage folder for permanent storage.
7z a /mnt/AMAZON-EFS-MOUNT/tree/HOSTNAME.tree.afhq.`date +"%y%m%d"`.7z ~/temporary/HOSTNAME.tree.afhq.`date +"%y%m%d"`.txt

# deletes temporary (large) files older than 3 days
find ~/temporary/* -mtime +3 -exec rm {} \;
