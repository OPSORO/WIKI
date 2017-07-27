![](/assets/OPSORO_WEB-5.jpg)

# Turn
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed ante mollis, vestibulum magna sit amet, euismod turpis. Etiam laoreet felis mauris, et fermentum ipsum viverra eu. Duis dictum ipsum a orci laoreet efficitur. Nam quam velit, tincidunt luctus consectetur a, sollicitudin at diam. Sed at dictum ex, tincidunt finibus purus. Pellentesque eget metus sollicitudin, posuere lacus in, scelerisque felis. Aliquam interdum nec nibh sed porta.

"background":16777215 --> white background

<div class="parts-tools">
  <div>
    <h4>Parts needed</h4>
    <ul>
      <li>1 set of laser-cut parts (7 pieces)</li>
      <li>3x M3 nut</li>
      <li>1x micro servo set</li>
    </ul>
  </div>
  <div>
    <h4>Tools needed</h4>
    <ul>
      <li>Hex key 2.5mm</li>
      <li>Small Philips screwdriver</li>
      <li>Servo tester</li>
    </ul>
  </div>
</div>


## 3D model

<div class="iris-container">
  <iframe src="/assets/iris/eye_full test.iris/index.html"></iframe>
</div>

## Assembly instructions

{% macro step() %}
  {% if stepnumber %}
    {% set stepnumber = stepnumber + 1 %}
  {% else %}
    {% set stepnumber = 123 %}
  {% endif %}

  ### Step {{ stepnumber }}
  {{ caller() }}
{% endmacro %}

{% call step() -%}
Quisque et elit non enim fringilla cursus. Aliquam tortor erat, vestibulum vitae sagittis eget, pulvinar et ante. Sed at porttitor orci, ac porta dui.
{%- endcall %}

{% call step() -%}
Integer dictum eget quam in maximus. Nunc id porta mi, eget condimentum massa. Vestibulum eget iaculis libero. Mauris finibus posuere gravida.
{%- endcall %}

{% call step() -%}
Morbi nisi lectus, interdum sed sapien nec, interdum finibus turpis. Nunc luctus velit sed metus eleifend, quis dignissim ligula tincidunt.
{%- endcall %}

<hr>

<!--### Step 1
Quisque et elit non enim fringilla cursus. Aliquam tortor erat, vestibulum vitae sagittis eget, pulvinar et ante. Sed at porttitor orci, ac porta dui.

### Step 2
Integer dictum eget quam in maximus. Nunc id porta mi, eget condimentum massa. Vestibulum eget iaculis libero. Mauris finibus posuere gravida.

### Step 3
Morbi nisi lectus, interdum sed sapien nec, interdum finibus turpis. Nunc luctus velit sed metus eleifend, quis dignissim ligula tincidunt.-->
