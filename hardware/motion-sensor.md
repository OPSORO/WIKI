{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/motion-sensor-module/hero.jpg)
{% endblock %}

{% block title %}Motion sensor module{% endblock %}

{% block intro %}
> **Warning** This module is still under development. Instructions are
> incomplete so proceed with caution.

The module sensor module gives your robot the ability to detect motion near it.
The module uses a passive infrared sensor to sense people near it. This type of
sensor is very basic; it will only tell you that something is moving, but not
what is moving or where. The motion sensor module can be connected to the grid
using 2 M3x10 screws.
{% endblock %}

{% block parts %}
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#motion-sensor-module) (6 pieces)
* 2&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 2&times; [M3x6 cap screws](./appendix/vendor-components.md#fasteners)
* 1&times; PIR motion sensor PCB
* 1&times; male/male servo cable (150mm)

{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
![](/images/motion-sensor-module/1.jpg)
Attach the PIR motion sensor to the front plate using two M3x6 screws. The sensor
should be attached from the back, so that the screw heads end up inside the
module and the white dome ends up on the outside.

### Step 2
![](/images/motion-sensor-module/2.jpg)
A modified male/male servo cable is needed to connect the module. Take the cable
and swap the red and white wires on one end of the cable. Plug the modified into
the connector on the sensor PCB, as shown in the picture. Pay close attention to
the polarity of the cable!

### Step 3
![](/images/motion-sensor-module/3.jpg)
Insert two M3 nuts into the hexagonal holes in the bottom plate.

### Step 4
![](/images/motion-sensor-module/4.jpg)
Attach the side plates using the snap connectors.

### Step 5
![](/images/motion-sensor-module/5.jpg)
There are two different side plates for this module, one with a cable opening
and one without. Attach the side plate _without_ cable opening.

### Step 6
![](/images/motion-sensor-module/6.jpg)
Slide the top plate with attached sensor into the side plate.

### Step 7
![](/images/motion-sensor-module/7.jpg)
Slip the cable through the cable opening in the remaining side plate.

### Step 8
![](/images/motion-sensor-module/8.jpg)
Snap the side plate into place. The module is now ready!

{% endblock %}
