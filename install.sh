# A bunch of pre setup including making sure git is installed
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install --no-install-recommends git zsh curl wget vim imagemagick silversearcher-ag -y

# Python
sudo apt-get install python3 python-pip -y
sudo pip install virtualenv

sudo apt-get install python3-setuptools -y
sudo easy_install3 pip
sudo pip3 install virtualenv

# the following are required for some python libraries
sudo apt-get install libsqlite3-dev libbz2-dev tk8.6-dev

# Node
DIR=$1

if [[ ! "$(type -P node)" ]]; then
    tput setaf 5
    echo "Installing Node..."
    tput sgr0

    mkdir /tmp/nodejs && cd $_
    wget -N http://nodejs.org/dist/node-latest.tar.gz
    tar xzvf node-latest.tar.gz && cd `ls -rd node-v*`
    ./configure
    sudo make install -s
    cd $DIR
else
    tput setaf 2
    echo "Node found! Moving on..."
    tput sgr0
fi
