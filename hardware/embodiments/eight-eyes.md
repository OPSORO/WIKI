# Space Invader
{% extends "../assembly-steps-template.md" %}

{% block heroimage %}
![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Eight Eyes{% endblock %}

{% block intro %}
Eight Eyes is an installation that is designed to highlight the concept behind
the modular grid system. As the name implies, the design features eight separate
eye modules that are connected to a single, elongated grid plate. This grid
features the silhouettes of four distinct characters, hinting at the purpose of
Opsoro: using modular building blocks to bring social characters to life.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plywood parts
  * 1&times; face (white)
  * 2&times; mouth (white)
  * 2&times; eyebrows (black)
* 6&times; laser-cut ABS spacers
* 1&times; [heart module](../heart.md)
* 1&times; [camera module](../camera.md)
* 8&times; [eye module](../eye.md)
* 6&times; M3 nut
* 10&times; M3x10 cap screws
* &plusmn; 10&times; [cable clip](../accessories.md#cable-clip)
* 10&times; [servo extension cable](../appendix/vendor-components.md)
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
