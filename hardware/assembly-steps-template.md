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


{% if model|default(false) %}
## Interactive 3D model
<div class="iris-container">
  <iframe src="{% block model %}{% endblock %}"></iframe>
</div>
{% endif %}

{% block steps %}
## Assembly instructions
{% endblock %}
