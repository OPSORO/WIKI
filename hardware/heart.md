{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Heart module{% endblock %}

{% block intro %}
The heart module forms the core of an Opsoro robot: it is responsible for
bringing all the modules to life. The heart module houses the electronics of the
robot in a convenient form factor that can be attached to the [grid](grid.md).
It contains a Raspberry Pi 3 with an [OpsoroHAT](shield/README.md) attached to
it. A single barrel connector provides power to both the motors and the
controller.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plastic parts (6 pieces)
* 2&times; laser-cut base spacer
* 4&times; M2.5x11 spacer
* 4&times; M2.5x20 cap screw
* 6&times; M3 nut
* 1&times; Raspberry Pi 3 model B
* 1&times; OpsoroHAT
* 1&times; panel mount 2.1mm DC barrel connector
* 1&times; 2-position Molex KK connector housing
* 2&times; Molex KK female crimp contact
* 2&times; cable ferrules
{% endblock %}

{% block tools %}
* hex key 2.5mm
* hex key 2mm
* [wire strippers](../hardware/tools.md#stripper)
* [DuPont crimping tool](../hardware/tools.md#dupont)
* ferrule crimping tool
* [soldering iron](../hardware/tools.md#soldering-iron)
{% endblock %}

{% set model = true %}
{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
Quisque et elit non enim fringilla cursus. Aliquam tortor erat, vestibulum vitae sagittis eget, pulvinar et ante. Sed at porttitor orci, ac porta dui.

### Step 2
Integer dictum eget quam in maximus. Nunc id porta mi, eget condimentum massa. Vestibulum eget iaculis libero. Mauris finibus posuere gravida.

### Step 3
Morbi nisi lectus, interdum sed sapien nec, interdum finibus turpis. Nunc luctus velit sed metus eleifend, quis dignissim ligula tincidunt.

{% endblock %}
