# Connectors
![](/images/opsoro-hat/connectors.png)

## 1. Servo power input
Power input for servos and speaker. Connect to a beefy 5V power supply.
Pins are ground (top), and +5V (bottom).

## 2. Servo connectors
Numbered from 0 (top) to 15 (bottom). Pins are ground (left), power (middle),
and signal (right). Make sure servos are connected correctly! Ground is usually
colored black or brown, power is usually red, and signal is usually orange,
yellow, or white.

## 3. Raspberry Pi HAT connector
Connector to attach the board on top of a Raspberry Pi. The board also
provides power to the Raspberry Pi through this connector, so no separate USB
power supply is needed for the Pi.

## 4. Logic power input.
Connect to a separate 5V 2A power supply, do not use the
same power supply as the servos, as voltage drops from large current draws will
reset the Raspberry Pi. Pins are +5V (top) and ground (bottom).

## 5. ISP header
Used to flash firmware onto the board's ATMega328 microcontroller. A programmer is
needed for this, e.g. AVRISP mk2. This is normally done only once.

> **Warning** To program the OpsoroHAT, the board should be disconnected from
> the Raspberry Pi, and should be powered by an independent 3.3V power supply.
> The board can be powered in this way through connector 10.

## 6. NeoPixel connector
Used to attach [NeoPixel](http://www.adafruit.com/category/168) RGB LEDs. In
theory, the board supports up to 100 LEDs. However, more than a couple of LEDs
will require a separate power supply. Pins are:

| Location | Pin      |
|----------|----------|
| top      | data out |
| middle   | +5V      |
| bottom   | ground   |

## 7. Speaker output
The board is designed to drive a 4 ohm 5W speaker. 8 ohm
speakers can also be used, but the audio output will be quieter. The pins are
not polarized, orientation of the speaker does not matter.

## 8. I2C expansion port
Allows additional I2C devices, such as sensors or
[Grove I2C modules](http://www.seeedstudio.com/wiki/Grove_System), to be
connected to the board. The connector is level-shifted to 5V logic level.
Pins from left-to-right are:

| Location | Pin    |
|----------|--------|
| left     | ground |
| &nbsp;   | +5V    |
| &nbsp;   | SDA    |
| right    | SCL    |

## 9. EEPROM write-protect
Write-protect for the HAT identification EEPROM. Bridge this header
with a jumper to program the EEPROM. Currently not used.

## 10. Analog inputs
Allows the board to read up to 4 analog inputs (0 - 3.3V) using the
microcontroller's ADC. Possible sensors that could be
measured with this port include force-sensitive resistors,
light-dependent resistors, and potentiometers. Pins are:

| Location      | Pin    |
|---------------|--------|
| top left      | A2     |
| top middle    | A0     |
| top right     | 3.3v   |
| bottom left   | A3     |
| bottom middle | A1     |
| bottom right  | ground |

## 11. Capacitive touch inputs
Connect any electrically conductive material to these pins to create touch
sensors. The bottom row is connected to ground, this allows you to use shielded
wires. The electrodes should be connected on the top row. Electrode pins are
numbered 0 (left) to 11 (right).
