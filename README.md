# mxListen
Allows the raspberry pi to be used as an output module for your mobotix camera, in this example it is used to play an audio file when activity sensor detects motion but it could also trigger one of the PIs GPIO pins

**Prerequisites **
mpg321 installed
'sudo apt-get install mpg321'

**Installation**
1. Clone this repo
2. cd into mxListen directory
3. run `sudo mv mxListen.service /etc/systemd/system`
4. run `sudo systemctl enable mxListen.service`
5. run `sudo systemctl start mxListen`
6. lower audio level for initial test via 'alsamixer'
7. in your mobotix camera create the following ipnotify profile
profile=ip0:_profilename=message-PI:preset=custom:ackn_time=60:pushprofile=:pushmessage=$(ID.NAM)%3A $(TMS):ipnotifyaddress=<change to your PIs ip address>%3A50501:send=on_error:protocol=raw:boundary=--next-image--:httppath=:httpauth=:data=msg:ipnotifymessage=Error message:filetype=mxg:rate100=100:antetime=1:posttime=1:systime=1440:statprof=:heatprof=:ipnotifyport=0

