# Centering a servo
Servos have a limited range of motion, typically somewhere between 120° and
180°. Because of the built-in potentiometer, they "remember" their position,
even when they are turned when they are not powered on. For these reasons, it is
necessary to *center a servo* before it is attached to a mechanism. This process
puts the the servo in its neutral position. This page describes how to achieve
this.

<div class="parts-tools">
  <div>
    {% md %}
#### Tools needed
* 5V power supply
* [Servo tester](tools.md#servo-tester)
* [Servo](vendor-components.md#servos)
    {% endmd %}
  </div>
</div>

## Step 1
![](/images/centering-a-servo/1.jpg)
You will need a suitable 5V power supply with a 2-pin
[DuPont connector](vendor-components.md#dupont-connectors) to power the servo
tester. If you have a lab power supply available, you can use that. Another
option is to use an old USB power supply. Cut off the micro USB connector, strip
the leads, and attach a DuPont connector.

## Step 2
![](/images/centering-a-servo/2.jpg)
Attach the power supply to the power input of the servo tester.

> **Warning** Mind the orientation of the connector. The red wire should be
> connected to the + pin, the black wire should be connected to the - pin, and
> the S pin should be left unconnected.

## Step 3
![](/images/centering-a-servo/3.jpg)
Press the *select* button once to put the tester in neutral mode.

## Step 4
![](/images/centering-a-servo/4.jpg)
Attach the servo to the servo tester. You should see the output shaft of the
servo move...

> **Warning** Mind the orientation of the connector. The brown wire should be
> connected to the - pin, the red wire should be connected to the + pin, and the
> orange wire should be connected to the S pin.

## Step 5 (Optional)
![](/images/centering-a-servo/5.jpg)
**Optional:** Now that the servo is in a neutral position, the servo horn can be
attached.
