# Install Docker
cd
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common- y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl enable docker

# Install Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.29.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Download the latest release of Fabric samples, docker images, and binaries.
cd
curl -sSL https://bit.ly/2ysbOFE | bash -s

# Install Go
wget -q https://dl.google.com/go/go1.14.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.linux-amd64.tar.gz
rm go1.14.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.bashrc
echo 'export GOPATH=~/go' >> /root/.bashrc
source /root/.bashrc
cd

# Install jq
sudo apt install jq -y
