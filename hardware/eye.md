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
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#eye-module) (5 pieces)
* 1&times; eye shell (printed)
* 1&times; pivot beam (printed)
* 2&times; eyelid (printed)
* 3&times; [micro servo set](./appendix/vendor-components.md#servos)
* 2&times; [M3x6 cap screws](./appendix/vendor-components.md#fasteners)
* 5&times; [M3x10 cap screws](./appendix/vendor-components.md#fasteners)
* 6&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 4&times; [M3 washers](./appendix/vendor-components.md#fasteners)
* 20cm of 1mm steel wire
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
* small Philips screwdriver
* small needle-nose pliers
* diagonal cutters
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
