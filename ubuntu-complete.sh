sudo apt update
sudo apt install -y maven git docker.io python-pip rubygems nodejs nmp nuget vim openssl
sudo npm install -y bower


wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs

pip install conan

sudo apt install -y nginx apache2
sudo service nginx stop
sudo service apache2 stop
