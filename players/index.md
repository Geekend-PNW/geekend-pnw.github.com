---
layout: default
## This page is curently hidden.  change layout to "page" to show this page
title: "Players"
permalink: /players/
---

{% for page in site.pages %}
  {% if page.layout == "person" %}
  <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
  {% endif %}
{% endfor %}

{% for player in site.data.players %}
  {{ player.fname }} {{ player.lname }}{% if player.bio %} -- {{ player.bio }}{% else %}{% endif %}
  
  
{% endfor %}


