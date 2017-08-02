{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}LED matrix module{% endblock %}

{% block intro %}
> **Warning** This module is still under development. Instructions are
> incomplete and the PCB design still needs work. Proceed with caution.

A module with a 8x8 pixel LED matrix display. The matrix itself is 32&times;32
mm large and multiple modules can be tiled together to form an arbitrarily large
display. The module can be attached to the grid using 2 M3x10 cap screws and
connects to the Raspberry Pi via USB.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plastic parts (5 pieces)
* 2&times; M3 nut
* 1&times; LED matrix board
* 1&times; micro USB cable
{% endblock %}

{% block tools %}
* hex key 2.5mm
{% endblock %}

{% set model = false %}
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
