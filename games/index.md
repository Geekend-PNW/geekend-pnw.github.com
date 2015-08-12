---
layout: page
title: "Games"
permalink: /games/
---

{% for page in site.pages %}
  {% if page.layout == "game" %}
  <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
  {% endif %}
{% endfor %}

