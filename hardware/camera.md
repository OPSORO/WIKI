{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/camera-module/hero.jpg)
{% endblock %}

{% block title %}Camera module{% endblock %}

{% block intro %}
The camera module gives your Opsoro robot the ability to see! Useful for all
sorts of computer vision applications, such as motion detection or face
recognition. The camera has a wide field of view and the tilt can be adjusted by
approximately 30°.
{% endblock %}

{% block parts %}
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#camera-module) (6 pieces)
* 4&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 4&times; [M3x10 cap screws](./appendix/vendor-components.md#fasteners)
* 1&times; USB camera module
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
* diagonal cutters
{% endblock %}

{% set model = false %}

{% block steps %}
{{ super() }}

### Step 1
![](/images/camera-module/1.jpg)
Use diagonal cutters to remove the border from the rest of the camera printed
circuit board.

### Step 2
![](/images/camera-module/2.jpg)
Start with the back plate. Mind the orientation of the rectangular opening.

### Step 3
![](/images/camera-module/3.jpg)
Put the mid plate on top of it. Again, mind the orientation.

### Step 4
![](/images/camera-module/4.jpg)
Put the camera PCB on top of the mid plate. The camera connector should fit in
the rectangular opening of the bottom plate.

### Step 5
![](/images/camera-module/5.jpg)
Put the top plate over the camera. Mind the orientation of the small slot, this
should fit over the pins of the connector.

### Step 6
![](/images/camera-module/6.jpg)
Secure everything in place using two M3x10 screws. They should screw directly
into the bottom plate.

> **Warning** Do not over-tighten the screws. Plastic threads are not as strong
> as metal threads.

### Step 7
![](/images/camera-module/7.jpg)
Insert an M3 nut into the back frame plate of the module. Clip the side frame
plate into position to secure the nut in place.

### Step 8
![](/images/camera-module/8.jpg)
Repeat the same for the opposite side of the frame.

### Step 9
![](/images/camera-module/9.jpg)
Attach the cable to the connector at the back of the camera PCB.

> **Info** The connector is keyed, so there's only one way to connect the cable.

### Step 10
![](/images/camera-module/10.jpg)
Slip the camera board subassembly into the module frame.

### Step 11
![](/images/camera-module/11.jpg)
Insert two M3 nuts into the rectangular openings in front of the module. Secure
them in place using two M3x10 screws at the sides of the module. These two
screws allow you to adjust the tilt angle of the module. The camera module is
now ready for use!

{% endblock %}
