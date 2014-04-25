#!/bin/bash

cp /vagrant/.bashrc ~/.bashrc
source ~/.bashrc


function apt_get() {
    if [[ -z `which $1` ]]; then
        [[ -z $2 ]] && package=$1 || package=$2
        sudo apt-get install $package
    fi
}

function gem_install() {
    if [[ -z `which $1` ]]; then
        [[ -z $2 ]] && package=$1 || package=$2
        gem install $package
    fi
}

sudo apt-get update
# apt_get java openjdk-7-jre-headless
apt_get rvm ruby-rvm
apt_get mysql mysql-client-core-5.5
sudo apt-get install mysql-server

rvm install jruby-1.7.12
rvm use jruby-1.7.12


## JRuby
#sudo mkdir -p /usr/local/Albus
#jruby_home=/usr/local/Albus/jruby
#sudo wget http://jruby.org.s3.amazonaws.com/downloads/1.7.12/jruby-bin-1.7.12.tar.gz $jruby_home
#cd $jruby_home
#sudo tar -zxvf jruby-bin-1.7.12.tar.gz
## End JRuby


gem_install rails
