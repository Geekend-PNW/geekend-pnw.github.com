---
layout: page
title: "Events"
permalink: /events/
---

{% for page in site.pages %}
  {% if page.layout == "event" %}
  <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
  {% endif %}
{% endfor %}