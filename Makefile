
install:
	sudo cp -f mjpg-streamer.service /etc/systemd/system/
	sudo sed -i "s/^User.*/User = ${USER}/g" /etc/systemd/system/mjpg-streamer.service
	sudo systemctl daemon-reload
	sudo systemctl enable mjpg-streamer.service
	sudo systemctl restart mjpg-streamer.service

remove:
uninstall:
	sudo rm -f /etc/systemd/system/mjpg-streamer.service
	sudo systemctl disable mjpg-streamer.service
