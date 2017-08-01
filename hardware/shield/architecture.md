# System architecture
> **Info** This article is intended for advanced users only.

![](/images/opsoro-hat/electronics-architecture.png)

The figure above shows a schematic overview of the OpsoroHAT electronics
architecture. The board has the following features:
* ATmega328 microcontroller which communicates with the Raspberry Pi over SPI.
* A 16 channel servo controller (PCA9685) with beefy power traces.
* A Power MOSFET to enable or disable all servos.
* An I2S soundcard with a 5W mono class-D amplifier, to be used with a 4 ohm or 8 ohm speaker.
* A 12 channel capacitive touch controller (MPR121).
* A power connector for back-powering the Raspberry Pi. (No more cutting up USB cables!)
* Support for NeoPixel LEDs
* A I2C expansion header with signals translated to 5V logic, convenient for hooking up arduino-compatible I2C devices
* A 4-channel analog sensor input.
* HAT EEPROM.
* Protection circuitry: TVS diodes, reverse polarity protection, etc.
