{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/button-module/hero.jpg)
{% endblock %}

{% block title %}Button module{% endblock %}

{% block intro %}
A module with a big, *BIG* red button. What will happen when you push it?
You decide! The button module attaches to the grid via two M3x10 cap scews.
After connecting the cable to the OpsoroHAT, the button can be accessed directly
in Blockly and in other apps.
{% endblock %}

{% block parts %}
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#button-module) (6 pieces)
* 6&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 1&times; [60mm arcade button](https://www.adafruit.com/product/1190)
* 1&times; red wire (20 cm)
* 1&times; yellow wire (20 cm)
* 1&times; black wire (20 cm)
* 1&times; resistor 10 k&#8486;
* 3&times; [DuPont crimp contact](./appendix/vendor-components.md#dupont-connectors)
* 1&times; [DuPont 2x3 connector housing](./appendix/vendor-components.md#dupont-connectors)
* Heat-shrink tubing (&empty; 6.4 mm)
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
* [wire strippers](./appendix/tools.md#stripper)
* [DuPont crimping tool](./appendix/tools.md#dupont)
* [soldering iron](./appendix/tools.md#soldering-iron)
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
![](/images/button-module/1.jpg)
Remove the microswitch from the button assembly by twisting the switch
counter-clockwise.

### Step 2
![](/images/button-module/2.jpg)
Cut off a piece of red, yellow, and black wire. Strip off both ends of the
wires.

### Step 3
![](/images/button-module/3.jpg)
Trim the lead of a 10K resistor and solder it to the black wire.

### Step 4
![](/images/button-module/4.jpg)
Solder the other end of the resistor to the bottom terminal of the switch.
Solder the yellow wire to this terminal as well.

### Step 5
![](/images/button-module/5.jpg)
Slip a piece of heat-shrink tubing over the connector tab and heat it up to
shrink it in place.

### Step 6
![](/images/button-module/6.jpg)
Solder the red wire to the middle connector tab of the microswitch.

### Step 7
![](/images/button-module/7.jpg)
Slip a piece of heat-shrink tubing over the solder joint and heat it up in
place.

### Step 8 (optional)
![](/images/button-module/8.jpg)
**Optional:** Use a cordless drill to twist the wires together.

### Step 9
![](/images/button-module/9.jpg)
Using a dupont crimp tool, attach three crimp connectors to one end of the
cable.

### Step 10
![](/images/button-module/10.jpg)
Insert the crimp connectors into the crimp housing. Mind the orientation of the
little barb on the crimp connector. Push until you hear it click into position.

> **Warning** Pay close attention to the position of each wire in the
> connector housing!

### Step 11
![](/images/button-module/11.jpg)
Insert the top of the button assembly into the top plate of the module. Secure
the button top in place with the included plastic nut.

### Step 12
![](/images/button-module/12.jpg)
Reassemble the button assembly by attaching the microswitch to the button top.

### Step 13
![](/images/button-module/13.jpg)
Take the bottom plate and insert an M3 nut in one of the hexagonal openings.
Snap a side plate (with snap connectors) onto the bottom plate so that it holds
the M3 nut in place.

### Step 14
![](/images/button-module/14.jpg)
Slide the top plate with the button assembly into place. Then, insert another M3
nut in the hexagonal opening of the bottom place and secure it in place by
snapping the opposite side plate into place.

### Step 15
![](/images/button-module/15.jpg)
Insert two M3 nuts into the hexagonal openings on one side of the module. Secure
the nuts into place by attaching one of the remaining side plate (the one
without cable opening).

### Step 16
![](/images/button-module/16.jpg)
Take the remaining side plate and slide it over the cable via the cable opening.

### Step 17
![](/images/button-module/17.jpg)
Insert two M3 nuts into the hexagonal holes, then snap the final side plate into
position. The module is done!

{% endblock %}
