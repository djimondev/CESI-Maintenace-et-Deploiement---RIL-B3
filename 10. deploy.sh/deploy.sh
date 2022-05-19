#!/bin/bash
cd ..
rsync -avz ./ root@34.71.240.214:~/maintenance-et-deploiement/ --exclude='.git/'
ssh root@34.71.240.214 'touch coucou.md'
ssh root@34.71.240.214 "tar  --exclude='./vendor' -cvf $(date '+%Y%m%d-%H%M%S').tar ./"


