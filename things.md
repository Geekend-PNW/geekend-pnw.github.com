---
title: "Things"
permalink: /things/
---

{% for page in site.things %}
  {% if page.layout == "thing" %}
  <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
  {% endif %}
{% endfor %}
