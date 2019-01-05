# mxListen
Allows the raspberry pi to be used as a sound output module for your mobotix camera

Installation
1. Clone this repo
2. cd into mxListen directory
3. run mv mxListen.service /etc/systemd/system
4. run sudo systemctl enable mxListen.service
5. run sudo systemctl start mxListen
