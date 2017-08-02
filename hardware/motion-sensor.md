{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
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
* 1 set of laser-cut plastic parts (6 pieces)
* 2&times; M3 nut
* 2&times; M3x6 cap screws
* 1&times; PIR motion module
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
