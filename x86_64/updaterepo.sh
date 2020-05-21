#!/bin/bash

rm hefftylionos.db
rm hefftylionos.files
rm hefftylionos.db.tar.gz
rm hefftylionos.files.tar.gz

echo "repo-add"
repo-add -n -R hefftylionos.db.tar.gz *.pkg.tar.zst
sleep 8
rm hefftylionos.db
rm hefftylionos.files
cp -f hefftylionos.db.tar.gz hefftylionos.db
cp -f hefftylionos.files.tar.gz hefftylionos.files
sudo rm /repo/x86_64/*
sudo cp -r . /repo/x86_64/

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
