#!/bin/bash

rm *.db
rm *.files
rm *.db.tar.gz
rm *.files.tar.gz



echo "repo-add"
repo-add -n -R hefftylionos.db.tar.gz *.pkg.tar.zst
#sleep 8
cp -f hefftylionos.db.tar.gz hefftylionos.db

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
