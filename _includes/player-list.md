{% for player in site.data.players %}
  {% if player.events contains page.event %}
  -  {{ player.fname }}</li>
  {% endif %}
{% endfor %}