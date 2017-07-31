![](/images/general/OPSORO_WEB-10.jpg)

# OpsoroHAT
OpsoroHAT is an add-on board for Raspberry Pi created specifically for building
DIY social robots. The board attaches on top of a standard Raspberry Pi,
allowing it to perform robot-specific tasks such as driving servo motors and
reading servos. The OpsoroHAT board can:
* drive up to 16 hobby servos
* drive a single speaker
* read 12 capacitive touch inputs
* read 4 analog inputs

## Technical details
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
