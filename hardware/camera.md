{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Camera module{% endblock %}

{% block intro %}
The camera module gives your Opsoro robot the ability to see! Useful for all
sorts of computer vision applications, such as motion detection or face
recognition. The camera has a wide field of view and the tilt can be adjusted by
approximately 30°.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plastic parts (6 pieces)
* 4&times; M3 nut
* 4&times; M3x10 cap screws
* 1&times; USB camera
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
