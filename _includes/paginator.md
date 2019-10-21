<ul class="pagination">
{% if paginator.total_pages > 1 %}
  {% if paginator.previous_page %}
  <li><a href="{{ paginator.previous_page_path | prepend: site.baseurl | replace: '//', '/' }}">&laquo;</a></li>
  {% else %}
  <li class="arrow unavailable"><a href="">&laquo;</a></li>
  {% endif %}

  {% for page in (1..paginator.total_pages) %}
  {% if page == paginator.page %}
  <li class="current"><a href="" style="color: inherit"><b>{{ page }}</b></a></li>
  {% elsif page == 1 %}
  <li><a href="{{ '/news/index.html' | prepend: site.baseurl | replace: '//', '/' }}">{{ page }}</a></li>
  {% else %}
  <li><a href="{{ site.paginate_path | prepend: site.baseurl | replace: '//', '/' | replace: ':num', page }}">{{ page }}</a></li>
  {% endif %}
  {% endfor %}

  {% if paginator.next_page %}
  <li><a href="{{ paginator.next_page_path | prepend: site.baseurl | replace: '//', '/' }}"> &raquo;</a></li>
  {% else %}
  <li class="arrow unavailable"><a href=""> &raquo;</a></li>
  {% endif %}
{% endif %}
  <li style="float: right"><a href="/news/rss.xml"><img src="/images/rss-small.png" style="vertical-align: top"></a></li>
</ul>
