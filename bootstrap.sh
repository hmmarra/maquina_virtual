#!/usr/bin/env bash

echo "deb http://vps.fmvz.usp.br/CRAN/bin/linux/ubuntu precise/" >> /etc/apt/sources.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

apt-get update

apt-get install -y vim r-base r-base-dev gdebi-core

wget http://download2.rstudio.org/rstudio-server-0.99.491-i386.deb

gdebi -n rstudio-server-0.99.491-i386.deb


