---
title: News
layout: content
---
{% for post in site.posts %}
- {{ post.date | date_to_string }} - [{{ post.title }}]({{ post.url }})
{% endfor %}
