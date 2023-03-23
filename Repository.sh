#!/bin/bash

echo Repository navn:
read rep

echo Commit comment:
read comment

ssh-add ~/.ssh/id_ed25519

git init
git add *
git commit -m "$comment"
git branch -M main
git remote add origin "$rep"
git push -u origin main
