---
layout: page
title: Blog
permalink: /blog/
description: This is where I write.
---

<div class="row mt">
    <div class="col-md-3">
        <div class="row">
            <div class="col-md-11">
                <hr>
                <h4>Subscribe</h4>
                <p>Subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
                <hr>
                <h4>Archives</h4>
                {% assign uniquePosts = site.posts | where: 'type', 'blog' %}
                {% for post in uniquePosts %}
                    <h6><a href="{{ post.url | prepend: site.baseurl }}">{{post.title}}</a></h6>
                {% endfor %}
                <hr>
            </div>
        </div>
    </div>
    <div class="col-md-9">
        <div class="row">
            {% for post in site.posts %}
            {% if post.type == "blog" %}
                <div class="col-md-12">
                    <p><bd>{{ post.date | date: "%b %-d, %Y" }}</bd></p>
                    <h4>{{ post.title }}</h4>
                    <p>{{ post.content | strip_html | truncatewords: 50 }}</p>
                    <p><a href="{{ post.url | prepend: site.baseurl }}">Continue Reading...</a></p>
                    <hr>
                </div>
            {% endif %}
            {% endfor %}
        </div>
    </div>
</div>
