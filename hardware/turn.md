{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
  ![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Turn module{% endblock %}

{% block intro %}
The turn module contains a single micro-size servo motor, and can be used as a
general building block for designing social robots. For instance, the turn
module can be used to implement an eyebrow with a single DOF. The module can be
mounted either straight or perpendicular to the grid using 2 M3x10 cap screws.
{% endblock %}

{% block parts %}
* 1 set of laser-cut parts (7 pieces)
* 3&times; M3 nuts
* 1&times; Micro servo set
{% endblock %}

{% block tools %}
* Hex key 2.5mm
* Small Philips screwdriver

*Optional:*
* [Servo tester](../hardware/tools.md#servo-tester)
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/turn-module.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
Quisque et elit non enim fringilla cursus. Aliquam tortor erat, vestibulum vitae sagittis eget, pulvinar et ante. Sed at porttitor orci, ac porta dui.

### Step 2
Integer dictum eget quam in maximus. Nunc id porta mi, eget condimentum massa. Vestibulum eget iaculis libero. Mauris finibus posuere gravida.

### Step 3
Morbi nisi lectus, interdum sed sapien nec, interdum finibus turpis. Nunc luctus velit sed metus eleifend, quis dignissim ligula tincidunt.

{% endblock %}
