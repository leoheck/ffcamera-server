resolution = 640x480
resolution = 640x480

#stream = 640x480
#image = 1024x768

install: set_resolution
	sudo cp -f ffmpeg.service /etc/systemd/system/
	sudo cp -f ffserver.service /etc/systemd/system/
	#sudo mv /etc/ffserver.conf /etc/ffserver.conf.bpk
	sudo cp -f ffserver.conf /etc/
	sudo systemctl enable ffserver.service
	sudo systemctl restart ffserver.service
	sleep 4
	sudo systemctl enable ffmpeg.service
	sudo systemctl restart ffmpeg.service

reload:

	sudo systemctl daemon-reload
	sudo systemctl restart ffserver.service
	sleep 5
	sudo systemctl restart ffmpeg.service

remove:
uninstall:
	sudo rm -f ffmpeg.service /etc/systemd/system/
	sudo rm -f ffserver.service /etc/systemd/system/
	sudo systemctl disable ffmpeg.service
	sudo systemctl disable ffserver.service

set_resolution:
	sed -i "s/640x480/$(resolution)/g" *
