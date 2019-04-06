---
layout: nonpage
title: Projects
permalink: /projects/
description: Self Projects and Course Projects
---

<h2>Internships</h2>
<hr>

{% for project in site.data.work-experience %}
<div class="row">
    <div class="col-sm-3">
        <img src="{{project.image}}" class="img img-responsive">
    </div>
    <div class="col-sm-9">
        <h4 style="font-size: 20px">{{project.title}}</h4>
        <hr>
        <p>{{project.description}}</p>
        <hr>
        <h5>
        {% if project.repo != "" %}<a href="{{project.repo}}">Project Description</a> &middot;{% endif %}
         {{project.project-type}} &middot; {{project.organisation}}</h5>
    </div>
</div>
<hr>
{% endfor %}

<br>
<h2>Research</h2>
<hr>

{% for project in site.data.research %}
<div class="row">
    <div class="col-sm-3">
        <img src="{{project.image}}" class="img img-responsive">
    </div>
    <div class="col-sm-9">
        <h4 style="font-size: 20px">{{project.title}}</h4>
        <hr>
        <p>{{project.description}}</p>
        <hr>
        <h5>
        {% if project.repo != "" %}<a href="{{project.repo}}">Project Description</a> &middot;{% endif %}
         {{project.project-type}} &middot; {{project.organisation}}</h5>
    </div>
</div>
<hr>
{% endfor %}

<br>
<h2>Undergraduate Course Projects</h2>
<hr>

{% for project in site.data.course %}
<div class="row">
    <div class="col-sm-3">
        <img src="{{project.image}}" class="img img-responsive">
    </div>
    <div class="col-sm-9">
        <h4 style="font-size: 20px">{{project.title}}</h4>
        <hr>
        <p>{{project.description}}</p>
        <hr>
        <h5>
        {% if project.repo != "" %}<a href="{{project.repo}}">Project Link</a> &middot;{% endif %}
         {{project.course}} Course</h5>
    </div>
</div>
<hr>
{% endfor %}