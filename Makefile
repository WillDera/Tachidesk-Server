setup_environment:
	sudo apt update && sudo apt -y upgrade
	sudo apt install -y openjdk-18-jre-headless
	sudo apt --fix-broken install -y
	sudo apt install -y libc++-dev
	wget https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.7.0/Tachidesk-Server-v0.7.0-r1197-debian-all.deb
	sudo dpkg -i Tachidesk-Server-v0.7.0-r1197-debian-all.deb

start_tachidesk:
	sudo tachidesk-server-browser
