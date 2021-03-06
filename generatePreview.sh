#!/bin/sh

FLAGS="-modules cwd,git,root"

mkdir -p /tmp/home/code/dotfiles;
cd /tmp/home/code/dotfiles/;
git init;
touch file1;
git add .;
git commit -m "commit";
touch file2;

mkdir -p /tmp/home/deep/down/into/the/abyss/of/directories/where/no/one/ever/comes/;
cd /tmp/home/deep/down/into/the/abyss/of/directories/where/no/one/ever/comes/;
git init;
touch file1;
git add .;
git commit -m "commit";

export HOME=/tmp/home/

clear;

cd /tmp/home/code/dotfiles/;
powerline-go -shell bare $FLAGS;
echo git branch;
git branch;

powerline-go -shell bare $FLAGS;
echo badcmd;
echo "bash: badcmd: command not found";

powerline-go -shell bare $FLAGS -error 1;
echo "cd ~/deep/down/into/the/abyss/of/directories/where/no/one/ever/comes/";
cd /tmp/home/deep/down/into/the/abyss/of/directories/where/no/one/ever/comes/;

powerline-go -shell bare $FLAGS;

rm -rf /tmp/home;

echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;echo;
