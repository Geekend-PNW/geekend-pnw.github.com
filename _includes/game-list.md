{% assign sorted_games = site.games | sort: 'title' %}
{% for game in sorted_games %}
  {% if game.events contains page.event_id %}
  - **[{{ game.title }}]({{ game.url | relative_url }})**{% if game.gm %} — GM: *{{ game.gm | join: ', ' }}*{% endif %}
  {% endif %}
{% endfor %}
