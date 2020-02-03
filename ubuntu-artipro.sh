# Install artifactory pro 6.17 & open jdk 8
sudo apt update
sudo apt install unzip -y
sudo apt install openjdk-8-jdk
java -version
wget "https://bintray.com/jfrog/artifactory-pro/download_file?file_path=org%2Fartifactory%2Fpro%2Fjfrog-artifactory-pro%2F6.17.0%2Fjfrog-artifactory-pro-6.17.0.zip" -O arti.zip
unzip arti.zip
artifactory-pro-6.17.0/bin/artifactory.sh start
