{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Eye module{% endblock %}

{% block intro %}
The eye module is one of the most complex modules of the Opsoro platform. It
implements a 3-DOF eyeball in a small and compact package. The eyeball itself
can move up/down and left/right. The eyelids of the module are actuated by a
single servo. The eye module can be attached to the grid using a single M3x10
cap screw. Assembling this module can be tricky, so we advise you to take your
time and to read the instructions carefully.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plastic parts (5 pieces)
* 1&times; Eye shell (printed)
* 1&times; Pivot beam (printed)
* 2&times; Eyelid (printed)
* 3&times; Micro servo set
* 2&times; M3x6 cap screw
* 5&times; M3x10 cap screw
* 6&times; M3 nut
* 20cm of 1mm steel wire
{% endblock %}

{% block tools %}
* Hex key 2.5mm
* Small Philips screwdriver
* Small needle-nose pliers
* Diagonal cutters
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
