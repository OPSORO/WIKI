# Installation

There are two ways to install OpsoroOS on your Raspberry Pi. The recommended
option is to flash the precompiled disk image to an SD card and use that with
your Pi. It is also possible to install the necessary software manually. This
might be necessary if you want to install the software on an existing
installation. This option is intended for advanced users.

## Precompiled disk image

A precompiled disk image is available for Raspberry Pi. This disk image is based
on Raspbian Jessie (lite) and contains all the necessary software to run
OpsoroOS. The image is compatible with the Raspberry Pi 1, 2, 3, and Zero. The
disk image can be downloaded **here**. The disk image cannot be copied to the SD
card directly, it needs to be flashed via a special utility. The process is
explained on [this page][disk-image].

[disk-image]: https://www.raspberrypi.org/documentation/installation/installing-images/

> **Warning** While the disk image contains all the necessary dependencies, the
> main python software might be slightly out of date. After flashing the disk
> image, it is recommended to update the software via the *Preferences* page.

## Manual installation

Manual installation of the software is also possible, though the process is more
involved. Make sure your Raspberry Pi can connect to the internet and connect to
the device via SSH.

1. Start with a fresh Raspbian install
2. Copy the contents the folder /OnoSW/ to /home/pi/OnoSW/
3. Copy the contents the folder /Scripts/ to /home/pi/Scripts/
4. Update your system

    ```
    sudo apt-get update
    sudo apt-get upgrade
    ```
5. Install Python development files, Avahi daemon, LuaJIT

    ```
    sudo apt-get install python2.7-dev avahi-daemon libluajit-5.1-dev
    ```

6. Install PIP

    ```
    sudo apt-get install python-setuptools
    sudo easy_install pip
    ```

7. [Compile and install LibYAML](http://pyyaml.org/wiki/LibYAML)  
    Or run following command:  
    ```
    sudo apt-get install python-yaml
    ```

    This step is not strictly necessary, but will result in a massive speedup
    when parsing config files. The python version of PyYAML takes well over 3
    seconds to parse the configs, the C version takes only a fraction of that.

8. Install Python packages (flask, flask-login, pyyaml, pluginbase, sockjs-tornado, simplejson, lupa, numpy, scipy, spidev)

    ```
    sudo pip install flask flask-login pyyaml pluginbase sockjs-tornado simplejson lupa numpy spidev
    sudo apt-get install -y python-smbus i2c-tools
    sudo apt-get install -y python-scipy
    ```

9. Enable SPI and I2C

    ```
    sudo raspi-config
    ```

    Go to advanced, A5 SPI --> Enable, A6 --> I2C enable.

10. Edit /etc/modules

    ```
    sudo nano /etc/modules
    ```

    Enter the following configuration

    ```
    # /etc/modules: kernel modules to load at boot time.
    #
    # This file contains the names of kernel modules that should be loaded
    # at boot time, one per line. Lines beginning with "#" are ignored.
    # Parameters can be specified after the module name.

    #snd-bcm2835
    i2c-bcm2708
    i2c-dev
    snd_soc_core
    snd_soc_bcm2708_i2s
    bcm2708_dmaengine
    snd_soc_pcm1794a
    snd_soc_rpi_dac
    ```
    Edit /etc/modprobe.d/raspi-blacklist.conf and make the file is empty. (no modules blacklisted)  

    ```
    sudo nano /etc/modprobe.d/raspi-blacklist.conf
    ```
11. Configure audio
    Add hifiberry-dac device tree overlay in config.txt
    (```sudo nano /boot/config.txt```). And add the following to the end of the
    config.txt file
    ```
    dtoverlay=hifiberry-dac
    ```
    If present, change ```dtparam=audio=on``` to ```#dtparam=audio=on```

    Configure ALSA

    ```
    sudo nano /etc/asound.conf
    ```

    Enter the following configuration

    ```
    pcm.!default {
      type        softvol
      slave.pcm   dac
      control {
        name      "Master"
        card      0
      }
    }

    pcm.dac {
      type plug
      slave {
        pcm       "hw:0,0"
        format     S16_LE
        channels   2
        rate       48000
      }
    }
    ```

    Reboot the Raspberry Pi

    ```
    sudo reboot
    ```

    Lower the master sound volume to something reasonable (limits 0-255)

    ```
    amixer set Master 128
    ```

12. [Install PicoTTS][pico]

    ```
    sudo apt-get install libttspico-utils
    ```

13. Install the eSpeak TTS engine

    ```
    sudo apt-get install espeak
    ```

14. Setup and configure the WiFi dongle  
    Install hostapd for the access point and dnsmasq for the DHCP server and DNS redirect

    ```
    sudo apt-get install -y hostapd dnsmasq
    ```

    Update ```/etc/network/interfaces``` so it matches following lines

    ```
    auto lo
    iface lo inet loopback

    allow-hotplug eth0
    iface eth0 inet manual

    #allow-hotplug wlan0
    #iface wlan0 inet manual
    #    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

    #allow-hotplug wlan1
    #iface wlan1 inet manual
    #    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

    allow-hotplug wlan0
    auto wlan0
    iface wlan0 inet static
       address 192.168.42.1
       netmask 255.255.255.0
       broadcast 192.168.42.255

    # reset existing rules and chains
    up /sbin/iptables -F
    up /sbin/iptables -X
    up /sbin/iptables -t nat -F

    # Mask for the interface, activate port-forwarding and NAT
    up iptables -A FORWARD -o eth0 -i wlan0 -s 192.168.42.0/24 -m conntrack --ctstate NEW -j ACCEPT
    up iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

    up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
    up sysctl -w net.ipv4.ip_forward=1

    # restart hostapd and dnsmasq
    up /etc/init.d/hostapd restart
    up /etc/init.d/dnsmasq restart
    ```

    Use the following configuration for /etc/hostapd/hostapd.conf

    ```
    interface=wlan0
    driver=nl80211
    ssid=OpSoRo_Robot
    ieee80211n=1          # 802.11n support
    wmm_enabled=1         # QoS support
    ht_capab=[HT40][SHORT-GI-20][DSSS_CCK-40]
    hw_mode=g
    channel=6
    macaddr_acl=0
    auth_algs=1
    ignore_broadcast_ssid=0
    wpa=2
    wpa_key_mgmt=WPA-PSK
    wpa_passphrase=opsoro123
    rsn_pairwise=CCMP
    ```

    Edit the file /etc/default/hostapd and change the line ```#DAEMON_CONF=""```
    to ```DAEMON_CONF="/etc/hostapd/hostapd.conf"```.

    Configure the DHCP server and DNS redirect.
    Create new config file (```sudo nano /etc/dnsmasq.d/dnsmasq.opsoro.conf```)
    and paste following lines:

    ```
    # Redirect specific urls
    address=/play.opsoro.be/192.168.42.1

    # DHCP-Server active for the wlan interface
    interface=wlan0

    # IP-Address range / Lease-Time
    dhcp-range=interface:wlan0,192.168.42.100,192.168.42.200,infinite
    ```

15. Change the host name to "opsoro"  
    In the files "/etc/hostname" and "/etc/hosts", change "raspberrypi" to 
    "opsoro"

    ```
    sudo nano /etc/hostname
    sudo nano /etc/hosts
    ```

16. Setup Opsoro service  
    The script for setting up opsoro can be found in /Scripts/.  
    Follow next steps to setup OpSoRo

    ```
    sudo cd /home/pi/Scripts/
    sudo chmod +x setup_opsoro
    sudo ./setup_opsoro
    ```

The Opsoro software and its dependencies should now all be installed and
working. Reboot the Raspberry Pi to test. Please [let us know][github-issue] if
any steps are missing!

[github-issue]: https://github.com/OPSORO/OS/issues/new
[pico]: http://rpihome.blogspot.be/2015/02/installing-pico-tts.html
