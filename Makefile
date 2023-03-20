setup_environment:
	sudo apt update && sudo sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
	sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

install_docker:
	sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io

set_docker_privileges:
	sudo usermod -aG docker $USER
	
pull_tackdesk:
	docker pull ghcr.io/suwayomi/tachidesk

start_tachidesk:
	docker run -p 4567:4567 ghcr.io/suwayomi/tachidesk
