{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
  ![](/images/turn-module/hero.jpg)
{% endblock %}

{% block title %}Turn module{% endblock %}

{% block intro %}
The turn module contains a single micro-size servo motor, and can be used as a
general building block for designing social robots. For instance, the turn
module can be used to implement an eyebrow with a single DOF. The module can be
mounted either straight or perpendicular to the grid using 2 M3x10 cap screws.
{% endblock %}

{% block parts %}
* 1 set of [laser-cut parts](./appendix/custom-components.md#turn-module) (7 pieces)
* 3&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 1&times; [micro servo set](./appendix/vendor-components.md#servos)
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
* small Philips screwdriver

*Optional:*
* [servo tester](./appendix/tools.md#servo-tester)
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/turn-module.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
![](/images/turn-module/1.jpg)
Insert two M3 nuts into the small clips.

### Step 2
![](/images/turn-module/2.jpg)
Snap the small clips into the side plates of the module.

### Step 3
![](/images/turn-module/3.jpg)
Insert an M3 nut into the middle plate of the module.

### Step 4
![](/images/turn-module/4.jpg)
Carefully slide the middle plate into the bottom plate, taking care that the
nut stays in place

### Step 5
![](/images/turn-module/5.jpg)
Snap the side plate into position. Mind the orientation: the three protrusions
should be near the back plate.

### Step 6
![](/images/turn-module/6.jpg)
Snap the top plate into place. The plate is asymmetric; the cutout for the servo
cable should be to the right, as shown in the picture.

### Step 7
![](/images/turn-module/7.jpg)
Snap the other side-plate into place. Again, pay attention to the orientation of
the protrusions.

### Step 8
![](/images/turn-module/8.jpg)
Insert the servo and attach it using the included screws. The cable of the servo
should be on the same side as the notch in the opening. The module is now ready
for use!

### Step 9 (optional)
![](/images/turn-module/9.jpg)
**Optional:** Use the servo tester to put the servo in a neutral position, and then
attach the servo horn using the included screw.

{% endblock %}
