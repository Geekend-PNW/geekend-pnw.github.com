---
title: "Games"
permalink: /games/
---

A selection of games we have enjoyed at our events:

{% assign sorted_games = site.games | sort: 'title' %}
{% for game in sorted_games %}
- **[{{ game.title }}]({{ game.url | relative_url }})**{% if game.gm %} — GM: *{{ game.gm | join: ', ' }}*{% endif %}
{% endfor %}
