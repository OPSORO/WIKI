# Space Invader
{% extends "../assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Space Invader{% endblock %}

{% block intro %}
Inspired by classical video games, the Space Invader has come to the physical
world in order to invade your personal space. The Space Invader is an example of
a minimal embodiment design for Opsoro. The invader shows that it only takes a
few laser-cut pieces of acrylic to transform a collection of modules into a
social character.
{% endblock %}

{% block parts %}
* 1 set of laser-cut acrylic parts
  * 1&times; face (white)
  * 2&times; mouth (white)
  * 2&times; eyebrows (black)
* 6&times; laser-cut ABS spacers
* 1&times; [A4 grid](../accessories.md#a4-grid)
* 1&times; [heart module](../heart.md)
* 1&times; [speaker module](../speaker.md)
* 4&times; [turn module](../turn.md)
* 2&times; [eye module](../eye.md)
* 6&times; M3 nut
* 10&times; M3x10 cap screws
* &plusmn; 10&times; [cable clip](../accessories.md#cable-clip)
* 10&times; [servo extension cable](../appendix/vendor-components.md)

*Optional:*
* 2&times; [LED matrix module](../led-matrix.md) *or*
* 1&times; [Button module](../button.md)
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
