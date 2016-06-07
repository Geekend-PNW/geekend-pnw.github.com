{% assign sorted_games = site.data.games | sort: 'name' %}
{% for game in sorted_games %}
  {% if game.events contains page.event %}
  - **{{ game.name }}** {% if game.gm %} -- GM: *{{ game.gm || join: ', ' }}* {% endif %} {% if game.abstract %} -- {{ game.abstract }} {% endif %}
  {% endif %}
{% endfor %}