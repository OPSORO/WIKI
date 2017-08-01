{% extends "./assembly-steps-template.md" %}

{% block heroimage %}
  ![](/images/general/OPSORO_WEB-5.jpg)
{% endblock %}

{% block title %}Heart module{% endblock %}

{% block intro %}
abc intro
{% endblock %}

{% block parts %}
* abc
* def
* ghi

*optional:*
* lorem
* ipsum
* dolor
{% endblock %}

{% block tools %}
* sqsf
* sqdfqsdf
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
