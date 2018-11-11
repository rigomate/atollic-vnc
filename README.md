# docker-truestudio
  
Ubuntu docker with installed TrueStudio from Atollic for accessing Truestudio over vnc
  
# license
  
My dockerfile is under the WTFPL license.  
Truestudio from Atollic is under their license.  


# Usage

Run it like this to mount something from your pc folder c:\PcStuff onto the docker image path: /mnt/data
docker run -d -p 5901:5901 -v c:/PcStuff:/mnt/data rigomate/atollic-vnc

With this command it will be running in the background. To kill it just execute this:
docker kill $(docker ps -q)

(This command will actually kill all docker containers)

After the container was started you can connect to it with a vnc client via localhost:5901, the default password is vncpassword
The atollic Truestudio is found on path: /opt/Atollic_TrueSTUDIO_for_STM32_x86_64_9.1.0/ide/TrueSTUDIO

Just execute the file: TrueSTUDIO