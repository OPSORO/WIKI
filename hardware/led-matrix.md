{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
![](/images/led-matrix-module/hero.jpg)
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
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#led-matrix-module) (5 pieces)
* 2&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 1&times; [LED matrix board](./appendix/custom-components.md#led-matrix-pcb)
* 1&times; micro USB cable
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
![](/images/led-matrix-module/1.jpg)
Insert two M3 nuts into the hexagonal holes in the bottom plate.

### Step 2
![](/images/led-matrix-module/2.jpg)
Slide the two smaller side-plates into the bottom plate.

### Step 3
![](/images/led-matrix-module/3.jpg)
Snap a big side-plate into place.

### Step 4
![](/images/led-matrix-module/4.jpg)
Do the same for the other side, completing the module's plastic frame.

### Step 5
![](/images/led-matrix-module/5.jpg)
Snap the LED matrix PCB into the module. The module is finished!

{% endblock %}
