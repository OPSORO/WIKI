{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Button module{% endblock %}

{% block intro %}
A module with a big, *BIG* red button. What will happen when you push it?
You decide! The button module attaches to the grid via 2 M3x10 cap scews. After
connecting the cable to the OpsoroHAT, the button can be read directly in
Blockly and in other apps.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plastic parts (6 pieces)
* 2&times; M3 nut
* 1&times; [60mm arcade button](https://www.adafruit.com/product/1190)
* 1&times; red wire (20cm)
* 1&times; yellow wire (20cm)
* 1&times; black wire (20cm)
* 3&times; DuPont crimp contact
* 1&times; DuPont 2x3 connector housing
{% endblock %}

{% block tools %}
* hex key 2.5mm
* wire strippers
* DuPont crimp tool
* soldering iron
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
