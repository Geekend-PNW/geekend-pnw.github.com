{% assign schedules = site.data.schedules %}
{% for schedule in schedules %}
  {% if schedule contains page.event_id %}
    {% assign current_schedule = schedule[1] %}
  {% endif %}
{% endfor %}

{% assign rows = current_schedule %}


{% assign header = rows | first %}


<table>
  <tr>
    {% for cell in header %}
      <th class="cell"> {{ cell[0] }} </th>
    {% endfor %}
  </tr>

  {% for row in rows %}
    <tr>
      {% for cell in row %}
        <td class="cell"> {{ cell[1] }} </td>
      {% endfor %}
    </tr>
  {% endfor %}
</table>
