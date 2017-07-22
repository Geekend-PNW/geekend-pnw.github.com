---
title: "Games"
permalink: /games/
---

{% for page in site.pages %}
  {% if page.layout == "game" %}
  <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
  {% endif %}
{% endfor %}

A selection of games we have enjoyed at our events:

{% assign sorted_games = site.data.games | sort: 'name' %}
{% for game in sorted_games %}
  - **{{ game.name }}** {% if game.gm %} -- GM: *{{ game.gm | join: ', ' }}* {% endif %} {% if game.abstract %} -- {{ game.abstract }} {% endif %}
{% endfor %}

