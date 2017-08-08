{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
  ![](/images/speaker-module/hero.jpg)
{% endblock %}

{% block title %}Speaker module{% endblock %}

{% block intro %}
The speaker module houses a miniature 4W speaker which can be attached directly
to the speaker output of the OpsoroHAT. The module can be mounted either
straight or perpendicular to the grid using two M3x10 cap screws.
{% endblock %}

{% block parts %}
* 1 set of [laser-cut plastic parts](./appendix/custom-components.md#speaker-module) (6 pieces)
* 4&times; [M3x6 cap screws](./appendix/vendor-components.md#fasteners)
* 6&times; [M3 nuts](./appendix/vendor-components.md#fasteners)
* 1&times; [miniature 4 Ohm 4W speaker](./appendix/vendor-components.md#speaker)
* 40cm of speaker cable
* 2&times; [dupont crimp connectors](./appendix/vendor-components.md#dupont-connectors)
* 1&times; [dupont 1x2 crimp housing](./appendix/vendor-components.md#dupont-connectors)
{% endblock %}

{% block tools %}
* [hex key 2.5mm](./appendix/tools.md#hex-key)
* [wire strippers](./appendix/tools.md#stripper)
* [DuPont crimping tool](./appendix/tools.md#dupont)
* [soldering iron](./appendix/tools.md#soldering-iron)
{% endblock %}

{% set model = false %}
{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
{{ super() }}

### Step 1
![](/images/speaker-module/1.jpg)
Strip the insulation from both ends of the wire. Split the two conductors over a
distance of 1cm on both ends.

### Step 2
![](/images/speaker-module/2.jpg)
Using a dupont crimp tool, attach two crimp connectors to one end of the cable.

### Step 3
![](/images/speaker-module/3.jpg)
Insert the crimp connectors into the crimp housing. Mind the orientation of the
little barb on the crimp connector. Push until you hear it click into position.

### Step 4
![](/images/speaker-module/4.jpg)
Tin the ends of cable, then solder them to the tabs of the miniature speaker.
The polarity of the wires does not matter.

### Step 5
![](/images/speaker-module/5.jpg)
Attach the miniature speaker to the front plate of the speaker module using four
M3x6 cap screws. The screws attach from the back so that the screw heads are
hidden inside once the module is finished.

### Step 6
![](/images/speaker-module/6.jpg)
Insert an M3 nut into the hexagonal hole of the bottom plate. Snap the side
plate onto the bottom plate so that the nut stays in place.

### Step 7
![](/images/speaker-module/7.jpg)
Slide the top place (with speaker attached) into place.

### Step 8
![](/images/speaker-module/8.jpg)
Insert another M3 nut into the bottom place, and then snap the second side plate
onto the bottom plate.

### Step 9
![](/images/speaker-module/9.jpg)
Insert two M3 nuts into the hexagonal openings of the side plates, and then snap
the short side plate into place.

> **Hint** A spare M3 screw can be handy to keep the nuts in place while you
> maneuver the plate into place.

### Step 10
![](/images/speaker-module/10.jpg)
Insert the speaker cable through the circular opening in the remaining side
plate.

### Step 11
![](/images/speaker-module/11.jpg)
Snap the remaining side plate into place. The module is now ready for use!

{% endblock %}
