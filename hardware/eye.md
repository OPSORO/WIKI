{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/eye-module/hero.jpg)
{% endblock %}

{% block title %}Eye module{% endblock %}

{% block intro %}
The eye module is one of the most complex modules of the Opsoro platform. It
implements a 3-DOF eyeball in a small and compact package. The eyeball itself
can move up/down and left/right. The eyelids of the module are actuated by a
single servo. The eye module can be attached to the grid using a single M3x10
cap screw. Assembling this module can be tricky, so we advise you to take your
time and to read the instructions carefully.
{% endblock %}

{% block parts %}
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#eye-module) (5 pieces)
* 1&times; [eye shell](./appendix/custom-components.md#eye-shell) (printed)
* 1&times; [pivot beam](./appendix/custom-components.md#pivot-beam) (printed)
* 2&times; [eyelid](./appendix/custom-components.md#eyelid) (printed)
* 3&times; [micro servo set](./appendix/vendor-components.md#servos)
* 2&times; [M3x6 cap screws](./appendix/vendor-components.md#fasteners)
* 5&times; [M3x10 cap screws](./appendix/vendor-components.md#fasteners)
* 6&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 4&times; [M3 washers](./appendix/vendor-components.md#fasteners)
* 20cm of 1mm steel wire
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
* small Philips screwdriver
* small needle-nose pliers
* diagonal cutters
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
## Preparation

### Step 1
![](/images/eye-module/clean-eye-shell.png)
Clean and deburr the 3D-printed eye shell. Use a cordless drill to drill out the
holes to the specified dimensions, as shown in the figure. Deburr the edges of
all the holes and use a file to remove any remaining print defects.

### Step 2
![](/images/eye-module/clean-eyelid.png)
Use diagonal cutters to remove the support from the two 3D-printed eyelids.
Clean and deburr the two parts. Use a cordless drill to drill out the holes to
the specified dimensions, as shown in the figure. Deburr the edges of all the
holes and use a file to remove any remaining print defects.

> **Warning** The eye module requires two eyelids, so be sure to do this step twice.

### Step 1
![](/images/eye-module/clean-pivot-beam.png)
Clean and deburr the 3D-printed pivot beam. Use a cordless drill to drill out the
holes to the specified dimensions, as shown in the figure.

### Step 4
![](/images/eye-module/pushrod-template.png)
Using a pair of needle-nose pliers and a pair of flush cutters, bend the 0.8mm
steel wire to form the four push rods of the module. Use the template above as a
guide.

> **Info** Print out the drawing at 1:1 scale. The PDF of the drawing can be
> found [here](https://github.com/OPSORO/BUILD/blob/master/modules/eye/extras/eye_wires.pdf).

### Step 5
![](/images/eye-module/zero-servos.jpg)
Use a servo tester to set the three servos to their neutral position. The
process is described [here](./appendix/centering-a-servo.md).

### Step 6
![](/images/eye-module/eye-iris.jpg)
Insert the laser-cut iris into the eye shell. The iris should snap into place
and should be flush with the surface of the eye shell.

> **Info** Some force may be required to snap the iris in place. The easiest
> method is to put the iris down on a table and push the eye shell over it,
> pushing with your thumb from the inside of the eye shell.


## Assembly instructions

### Step 1
![](/images/eye-module/1.jpg)
Attach the pivot beam to the mid plate using an M3x10 screw, an M3 nut, and two
M3 washers:
- Start by inserting the nut into the hexagonal opening of the pivot
beam.
- Insert the tip of the M3x10 screw through the opposite hole.
- Slip a washer over the tip of the screw
- Insert the mid plate
- Slip another washer over the tip of the screw
- Fasten the screw into the nut

> **Warning** Make sure you add the two washers. They are needed to create a
> low-friction pivot point. Do not over-tighten the screw, make sure that the
> pivot beam can turn freely.

### Step 2
![](/images/eye-module/2.jpg)
Attach the shortest push rod to pivot beam. Use needle-nose pliers to insert the
wire into the correct hole.

> **Warning** There are two holes in the pivot beam. Pick the one to the left,
> as shown in the picture.

### Step 3
![](/images/eye-module/3.jpg)
Insert an M3 nut into the rectangular opening of the pivot beam, then add a
washer on the opposite side and secure everything in place with an M3x10 screw.
Repeat the same process for the opposite side. The screw heads of the M3x10
screws will serve as the pivot point for the eye shell.

### Step 4
![](/images/eye-module/4.jpg)
Attach a micro servo to the mid plate using the two included screws. Mind the
position and orientation of the servo.

> **Info** The servo should be inserted *from the bottom* of the module. The shaft
> of the servo should face *the front* of the module.

### Step 5
![](/images/eye-module/5.jpg)
Attach the push rod to a servo horn. The rod should slip through the third hole
(counting from the tip). Then, attach the servo horn to the servo and secure it
in place using the included screw.

> **Warning** Make sure the servo is centered before attaching the servo horn.

### Step 6
![](/images/eye-module/6.jpg)
Attach the second servo to the mid plate. Position the servo as shown in the
picture.

> **Info** The servo should be inserted **from the top** of the module. The shaft
> of the servo should face **the back** of the module.

### Step 7
![](/images/eye-module/7.jpg)
Attach the eye shell to the pivot beam by squishing it slightly, and then
slipping it over the cap screw heads of the pivot beam. Make sure the eye shell
can rotate freely.

### Step 8
![](/images/eye-module/8.jpg)
Attach the longest push rod to the top hole of the eye shell. Squish the end of
the push rod with needle-nose pliers so that the push rod is completely flush
with the surface of the eye shell.

### Step 9
![](/images/eye-module/9.jpg)
Slip the other end of the push rod through a servo horn. The rod should be
attached to the third hole, counting from the tip. Attach the servo horn to the
servo's output shaft using the included screw.

### Step 10
![](/images/eye-module/10.jpg)
Insert an M3 nut into the back clip component, then snap the back clip and the
nut into the mid plate of the module.

### Step 11
![](/images/eye-module/11.jpg)
Attach the side plate **without opening** to the mid plate using an M3 nut and an
M3x10 screw. Mind the orientation of the component.

> **Warning** The horizontal edge of the side plate should be on the top side of
> the module. The side plate should be connected on right next to the servo.

### Step 12
![](/images/eye-module/12.jpg)
Attach a servo to the remaining side plate, as shown in the picture. The servo
should be attached from the back of the of the plate and the servo's output
shaft should be oriented towards the front of the module.

> **Warning** Make sure the servo is centered before attaching the servo horn.

### Step 13
![](/images/eye-module/13.jpg)
Slip the cable of the servo through the rectangular opening of the mid plate.
Then, attach the side plate to the rest of the module using an M3 nut and an
M3x10 screw.

### Step 14
![](/images/eye-module/14.jpg)
There should be two remaining push rods. Attach one of them to the **short** end
of an eyelid. Attach the other to the **long** end of the other eyelid. The push
rods should be able to rotate freely.

> **Info** The eyelids are asymmetrical, the hinge feature of the eyelid is shorter
on one side and longer on the other side. Because of this, the same part can be
used for both upper and lower eyelid.

## Step 15
![](/images/eye-module/15.jpg)
Attach the eyelids to the frame of the module using two M3x10 screws. Mind the
orientation of the eyelids:
- The long hinge of one eyelid should overlap with the short hinge of the other
  eyelid.
- The levers on the eyelids should be pointing backwards.
- The push rods should be located on the side of the servo.

## Step 16
![](/images/eye-module/16.jpg)
Slip the ends of the push rods through the fourth and fifth hole of a servo horn
(counting from the tip). Attach the servo horn to the servo using the included
screw. Congratulations, the eye module is now ready!

{% endblock %}
