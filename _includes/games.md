{% for game in site.data.games %}
  {% if game.events contains page.event %}
  - **{{ game.name }}** {% if game.gm %} -- GM: *{{ game.gm }}* {% endif %} {% if game.abstract %} -- {{ game.abstract }} {% endif %}
  {% endif %}
{% endfor %}