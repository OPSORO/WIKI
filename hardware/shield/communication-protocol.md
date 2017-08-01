#Communication Protocol

> **Info** This article is intended for advanced users only.
> For most purposes, the HAT functionality can be accessed through the Opsoro API.

The Raspberry Pi communicates with the microcontroller on the OpsoroHAT via the
SPI bus. The SPI bus clock speed is set to a frequency of 122 kHz, this is the
maximum bus speed that the microcontroller can handle reliably. A typical
transaction between master (Raspberry Pi) and slave (OpsoroHAT) happens in two
phases.

![](/images/opsoro-hat/spi-protocol.png)

The first step is to transfer a command plus its parameters (if any) to the
slave. Whenever the CS pin is pulled low by the master, the slave will interpret
the next MOSI byte as a command byte, with each consecutive byte stored in
buffer as parameter data. When the CS pin is driven to a logic high, the
microcontroller processes and executes the command, during which the master
waits. Results of commands, if any, are stored in an outgoing buffer.

The second step is to read the output of the command. This step is optional and
only occurs if the master is expecting return data. The CS pin is pulled to
logic low and a special CMD_READ byte is transferred to the slave. Each
subsequent byte sent by the master causes the slave to return the next byte of
the outgoing buffer.

## Command set

### General commands

| Command            | Value | In | Out | Description                                      |
|--------------------|-------|----|-----|--------------------------------------------------|
| CMD_NOP            | 0     | 0  | 0   | No operation                                     |
| CMD_NC             | 255   | 0  | 0   | Not connected                                    |
| CMD_PING           | 1     | 0  | 1   | To check connection                              |
| CMD_READ           | 2     | 0  | ?   | Return result from previous command              |
| CMD_RESET          | 3     | 0  | 0   | Reset the ATmega328                              |
| CMD_LEDON          | 4     | 0  | 0   | Turn LED on                                      |
| CMD_LEDOFF         | 5     | 0  | 0   | Turn LED off                                     |

### I2C commands

| Command            | Value | In | Out | Description                                      |
|--------------------|-------|----|-----|--------------------------------------------------|
| CMD_I2C_DETECT     | 20    | 1  | 1   | Test if there's a device at address              |
| CMD_I2C_READ8      | 21    | 2  | 1   | Read byte                                        |
| CMD_I2C_WRITE8     | 22    | 3  | 0   | Write byte                                       |
| CMD_I2C_READ16     | 23    | 2  | 2   | Read 2 bytes                                     |
| CMD_I2C_WRITE16    | 24    | 4  | 0   | Write 2 bytes                                    |

### Servo commands

| Command            | Value | In | Out | Description                                      |
|--------------------|-------|----|-----|--------------------------------------------------|
| CMD_SERVO_INIT     | 40    | 0  | 0   | Init PCA9685                                     |
| CMD_SERVO_ENABLE   | 41    | 0  | 0   | Turn on MOSFET                                   |
| CMD_SERVO_DISABLE  | 42    | 0  | 0   | Turn off MOSFET                                  |
| CMD_SERVO_NEUTRAL  | 43    | 0  | 0   | Set all servos to 1500                           |
| CMD_SERVO_SET      | 44    | 3  | 0   | Set 1 servo position                             |
| CMD_SERVO_SETALL   | 45    | 32 | 0   | Set  position of all servos                      |

### Capacitive touch commands

| Command            | Value | In | Out | Description                                      |
|--------------------|-------|----|-----|--------------------------------------------------|
| CMD_CAP_INIT       | 60    | 3  | 0   | Init MPR121                                      |
| CMD_CAP_SETTH      | 61    | 3  | 0   | Set pin touch/release threshold                  |
| CMD_CAP_GETFD      | 62    | 0  | 24  | Get pin filtered data (10 bits per electrode)    |
| CMD_CAP_GETBD      | 63    | 0  | 12  | Get pin baseline data, high 8 bits of 10         |
| CMD_CAP_TOUCHED    | 64    | 0  | 2   | Get touched status                               |
| CMD_CAP_SETGPIO    | 65    | 2  | 0   | Set GPIO mode                                    |
| CMD_CAP_GPIOREAD   | 66    | 0  | 1   | Read GPIO pin                                    |
| CMD_CAP_GPIOWRITE  | 67    | 2  | 0   | Write GPIO pin                                   |

### NeoPixel commands

| Command            | Value | In | Out | Description                                      |
|--------------------|-------|----|-----|--------------------------------------------------|
| CMD_NEO_INIT       | 80    | 1  | 0   | Init Neopixel                                    |
| CMD_NEO_ENABLE     | 81    | 0  | 0   | Turn on MOSFET                                   |
| CMD_NEO_DISABLE    | 82    | 0  | 0   | Turn off MOSFET                                  |
| CMD_NEO_SETBRIGHT  | 83    | 1  | 0   | Set brightness                                   |
| CMD_NEO_SHOW       | 84    | 0  | 0   | Show pixels                                      |
| CMD_NEO_SET        | 85    | 4  | 0   | Set single pixel                                 |
| CMD_NEO_SETRANGE   | 86    | 5  | 0   | Set range of pixels                              |
| CMD_NEO_SETALL     | 87    | 3  | 0   | Set all pixels                                   |
| CMD_NEO_SETHSV     | 88    | 4  | 0   | Set single pixel HSV                             |
| CMD_NEO_SETRANGEHSV| 89    | 5  | 0   | Set range of pixels HSV                          |
| CMD_NEO_SETALLHSV  | 90    | 3  | 0   | Set all pixels HSV                               |

### Analog input commands

| Command            | Value | In | Out | Description                                      |
|--------------------|-------|----|-----|--------------------------------------------------|
| CMD_ANA_GET        | 100   | 1  | 2   | Read an analog channel                           |
| CMD_ANA_GETALL     | 101   | 0  | 8   | Read all analog channels                         |
