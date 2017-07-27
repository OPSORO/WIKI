{% block heroimage %}{% endblock %}

# {% block title %}Untitled{% endblock %}

{% block intro %}{% endblock %}

<div class="parts-tools">
  <div>
    <h4>Parts needed</h4>
    {% md %}{% block parts %}*none*{% endblock %}{% endmd %}
  </div>
  <div>
    <h4>Tools needed</h4>
    {% md %}{% block tools %}*none*{% endblock %}{% endmd %}
  </div>
</div>


{% set model %}{% block model %}{% endblock %}{% endset %}
{% if model %}
## Interactive 3D model
<div class="iris-container">
  <iframe src="{{ model }}"></iframe>
</div>
{% endif %}

## Assembly instructions

{% block steps %}{% endblock %}
