# Connecting via WiFi

If everything was configured correctly, the Raspberry Pi should create a WiFi
hotspot ```OPSORO_Robot``` at startup. The default password is ```opsoro123```.
This network gives you access the robot's web interface.

Once connected to the network, open a browser and go to
[http://opsoro.local](http://opsoro.local). If you configured the DHCP and DNS
server correctly, then [http://play.opsoro.be](http://play.opsoro.be) should
also work.

You will be presented with a login screen, the default password is ```opsoro123```.
The main interface lets you control the robot through a number of apps.

## Troubleshooting
Not working? Don't panic. Here are some tips to troubleshoot connectivity issues.

* To begin, make sure you are connected to the correct network! Some laptops and
phones have a tendency to automatically switch between WiFi networks, and this
can cause issues.

* The web interface can also be accessed by entering the IP-address in your
browser, which is ```192.168.42.1```.

* The opsoro.local address only works on computers that have Bonjour. If you are
using OS X or have iTunes installed, you already have Bonjour. Bonjour can also
be downloaded [here](https://www.apple.com/support/bonjour/).

* If the Raspberry Pi is connected to the internet via ethernet, the hotspot
will also give its users internet access. Additionally, the web interface will
be accessible from the parent network using the opsoro.local address.
