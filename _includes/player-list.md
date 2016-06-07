{% assign sorted_players = site.data.players | sort: 'fname' %}
{% for player in sorted_players %}
  {% if player.events contains page.event %}
  -  {{ player.fname }}
  {% endif %}
{% endfor %}