---
layout: sublog
title: Season of KDE 2014 Blog
description: KDE
---
{% for post in site.posts %}
{% if post.type == "sublog" %}
{% if post.sublog == "sok14" %}
<div class="row mt">
    <div class="col-lg-8 col-lg-offset-2">
        <p><bd>{{ post.date | date: "%b %-d, %Y" }}</bd></p>
        <h4>{{ post.title }}</h4>
        <p>{{ post.content | strip_html | truncatewords: 50 }}</p>
        <p><a href="{{ post.url | prepend: site.baseurl }}">Continue Reading...</a></p>
        <hr>
    </div>
</div>
{% endif %}
{% endif %}
{% endfor %}
