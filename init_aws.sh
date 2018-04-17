sudo yum install -y vim
sudo yum install -y mlocate
sudo yum install -y telnet
sudo yum install -y git

sudo updatedb

echo "\nshopt -s globstar" >> ~/.bashrc
source ~/.bashrc