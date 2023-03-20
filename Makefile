setup_environment:
	sudo apt update && sudo sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
	url -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

install_docker:
	sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io

set_docker_privileges:
	sudo usermod -aG docker $USER
