

![](/images/general/OpsoroHAT_connectors.png)

#OpsoroHAT pinout
1. Power input for servos and speaker. Connect to a beefy 5V power supply.
Pins are ground (top), and +5V (bottom).

2. Connectors for RC servos. Numbered from 0 (top) to 15 (bottom). Pins are
ground (left), power (middle), and signal (right). Make sure servos are
connected correctly! Ground is usually colored black or brown, power is usually
red, and signal is usually orange, yellow, or white.

3. Connector to attach the board on top of a Raspberry Pi. The board also
provides power to the Raspberry Pi through this connector, so no separate USB
power supply is needed for the Pi.

4. Logic power input. Connect to a separate 5V 2A power supply, do not use the
same power supply as the servos, as voltage drops from large current draws will
reset the Raspberry Pi. Pins are +5V (top) and ground (bottom).

5. ISP header to program the board's ATMega328 microcontroller. A programmer is
needed for this, e.g. AVRISP mk2. This is normally only used once to program the
board's firmware. **Important:** To program the board, it should be disconnected
from the Raspberry Pi, and should be powered by an independent 3.3V power supply.
The board can be powered in this way through connector 10.

6. [NeoPixel](http://www.adafruit.com/category/168) connector. Pins are data out
(top), +5V (middle), ground (bottom). The board theoretically supports up to 100
LEDs, though a larger string of LEDs will require a separate power supply.

7. Speaker output. The board is designed to drive a 4 ohm 5W speaker. 8 ohm
speakers can also be used, but the audio output will be quieter. The pins are
not polarized, orientation of the speaker does not matter.

8. I2C port connector. Allows additional I2C devices, such as sensors or
[Grove I2C modules](http://www.seeedstudio.com/wiki/Grove_System), to be
connected to the board. The connector is level-shifted to 5V logic level.
Pins from left-to-right are ground, +5V, SDA, SCL.

9. Write-protect jumper for the HAT identification EEPROM, connect a jumper here
to program the EEPROM. Currently not used yet.

10. Analog sensor port. Allows the board to measure up to 4 analog signals
(0-3.3V) using the microcontroller's ADC. Possible sensors that could be
measured with this port include force-sensitive resistors,
light-dependent resistors, and potentiometers. Pins are:
  * A2 (top left)
  * A0 (top middle)
  * 3.3V (top right)
  * A3 (bottom left)
  * A1 (bottom middle)
  * ground (bottom right)

11. Connector for capacitive touch pads. Connect any electrically conductive
material to the pins on this connector to turn them into touch sensors. The
bottom row is connected to ground, this allows you to use shielded wires. The
electrodes should be connected on the top row. Electrode pins are numbered 0
(left) to 11 (right).
