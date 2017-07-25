{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
  ![](/assets/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Speaker module{% endblock %}

{% block intro %}
The speaker module is a x by y module that houses a miniature 4W speaker, and
can be attached directly to the speaker output of the OpsoroHAT. The module can
be mounted either straight or perpendicularly to the grid using 2 M3x10 cap screws.
{% endblock %}

{% block parts %}
* 1 set of laser-cut plastic parts (6 pieces)
* 4&times; M3x6 cap screws
* 6&times; M3 nuts
* 1&times; miniature 4 Ohm 4W speaker
* 40cm of speaker cable
* 2&times; dupont crimp connectors
* 1&times; dupont 1x2 crimp housing
{% endblock %}

{% block tools %}
* Hex key 2.5mm
* Wire strippers
* Dupont crimping tool
* Soldering iron
{% endblock %}

{% block model %}/assets/iris/eye_full test.iris/index.html{% endblock %}

{% block steps %}
### Step 1
Strip the insulation from both ends of the wire. Split the two conductors.

### Step 2
Using a dupont crimp tool, attach two crimp connectors to one end of the cable.

### Step 3
Insert the crimp connectors into the crimp housing. Mind the orientation of the
little barb on the crimp connector. Push until you hear it click into position.

### Step 4
Tin the ends of cable, then solder them to the tabs of the miniature speaker.
The polarity of the wires does not matter.

### Step 5
Attach the miniature speaker to the front plate of the speaker module using 4
M3x6 cap screws. The screws attach from the back so that the screw heads are
hidden inside once the module is finished.

### Step 6
Blah blah 


{% endblock %}
