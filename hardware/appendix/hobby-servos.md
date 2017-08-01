# Using hobby servos
Hobby servos are used as the main actuators in Opsoro robots. These motors
originate from the RC world, where they are used to control model cars or
airplanes. These actuators have the advantage of being inexpensive and
relatively easy to control. However, when using these actuators, some things
need to be kept in mind:

* They have 3 wires: ground, 5V and signal. The servo will only work if these
wires are connected correctly. The colors of these wires can vary. Common color
codes include:
  * ground (brown), 5V (red), signal (orange)
  * ground (black), 5V (red), signal (white)

* Hobby servos have a limited range of motion. Usually, they are restricted to
180° of rotation. Beyond that, they hit a plastic tab inside the servo. These
actuators cannot be used for continuous rotation, but they can be told to rotate
to a certain position and stay in that position.

* To control them, a pulse-width modulation signal needs to be sent. The length
of the pulse determines the angle of the servo:
<img src="/images/general/servo-timing.png" style="width: 75%; margin: 0;">
  * 500μs corresponds to minimum position (usually -90°)
  * 1500μs corresponds to neutral position (0°)
  * 2500μs corresponds to maximum position (usually +90°).

* The gearbox of the servo is internally connected to a potentiometer, which is
used to sense the position of the servo. As a result, it is important to first
put the servo in neutral position before connecting a mechanism to the output
shaft. Not doing so can result in unexpected behavior, such as the servo
destroying itself because it cannot rotate further.
