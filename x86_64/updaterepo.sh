#!/bin/bash

rm *.db
rm *.files
rm *.db.tar.gz
rm *.files.tar.gz



echo "repo-add"
repo-add -n -R hefftylionos.db.tar.gz *.pkg.tar.zst
#sleep 8
rm hefftylionos.db
rm hefftylionos.files
cp -f hefftylionos.db.tar.gz hefftylionos.db
cp -f hefftylionos.files.tar.gz hefftylionos.files

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
