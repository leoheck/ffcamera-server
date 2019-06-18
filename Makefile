install:
	sudo cp -f ffmpeg.service /etc/systemd/system/
	sudo cp -f ffserver.service /etc/systemd/system/
	#sudo mv /etc/ffserver.conf /etc/ffserver.conf.bpk
	sudo cp -f ffserver.conf /etc/
	sudo systemctl enable ffmpeg.service
	sudo systemctl enable ffserver.service
	sudo systemctl restart ffmpeg.service
	sudo systemctl restart ffserver.service

remove:
uninstall:
	sudo rm -f ffmpeg.service /etc/systemd/system/
	sudo rm -f ffserver.service /etc/systemd/system/
	sudo systemctl disable ffmpeg.service
	sudo systemctl disable ffserver.service
