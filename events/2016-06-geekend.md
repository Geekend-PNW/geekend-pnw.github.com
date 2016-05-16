---
layout: event
title: "Episode III: The Geek Awakens"
permalink: /events/2016-06/
event: 2016-06
---

# Schedule:

| Date               | Room: Lucid          | Room: Sweven         | Food                 | Food Helper |
|--------------------|----------------------|----------------------|----------------------|-------------|
| Friday Eve         | Game of Gamement     |                      | Hamburgers & chips   | Anthony     |
| Saturday Morning   |                      |                      | French Toast & Bacon | Michael     |
| Saturday Afternoon | Fiasco of Fiasconess | Fiasco of Fiasconess | Stew & Biscuits      | Bill        |
| Saturday Evening   | Roles of Rolemation  | Roles of Rolemation  | Dinner in town       | (Unneeded?) |
| Saturday Night     | Auction (Eric)       |                      | Wild Hairs           | John        |
| Sunday Morning     |                      |                      | Biscuits & Gravy     | James       |
| Sunday Lunch       |                      |                      | Hot Digs & chips     | Eric        |

    
    <h1>Games:</h1>
    <ul>
    {% for game in site.data.games %}
      {% if game.events contains page.event %}
      <li><strong>{{ game.name }}</strong> {% if game.gm %} -- GM: {{ game.gm }} {% endif %} {% if game.abstract %} -- <em>{{ game.abstract }}</em> {% endif %}</li>
      {% endif %}
    {% endfor %}
    </ul>


# Catering:
Food provided by **Lounge Larry's Meals**

# Notes: 
2015-06 - Naming Rights for Geekend III have been sold to Anthony

2015-06 - This is a living document that will be updated as information becomes available.

