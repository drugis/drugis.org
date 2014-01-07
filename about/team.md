---
layout: content
title: The team
---

<div class="row">
  <div class="large-12 columns">
    <h2>Core team</h2>
  </div>
</div>

{% for member in site.data.members %}
  <div class="row">
    <hr>
    <div class="large-8 columns">
      <h4>{{member.name}}</h4>
      <h5>{{member.role}}</h5>
      <p>{{member.bio | markdownify}}</p>
      <p>Find out more on his <a href="{{member.homepage-url}}" title="{{member.name}}">personal page</a>.
    </div>
    <div class="large-3 columns">
      <img class="screen-shot" src="/images/about/{{member.picture-url}}">
    </div>
  </div>
{% endfor %}
<hr>

## Evangelists

- Hans Hillege; medical advisor & EMA liaison
- Bert de Brock; advisor

## Students

- Bob Goeree; MSc student; team member since 2013-09
- Lourens Elzinga; MSc student, research assistant; team member since 2013-09

## Previous contributors

- Joël Kuiper; developer (2012-04 — 2013-10)
- Wouter Reckman; developer (2012-04 — 2012-09)
- Margreth Venaely Kileo; MSc thesis project (2011-02 — 2011-08)
- Jing Zhao; MSc thesis project, KTH ICT (2010-03 — 2010-06); research assistant 0.2FTE (2011-01 — 2011-06)
- Ahmad Kamal; developer (2010-08 — 2011-03)
- Florin Schimbinschi; developer (2010-09 — 2011-06)
- Dr. Tommi Tervonen; researcher & developer (2009-04 — 2010-08)
- Tijs Zwinkels; developer (2009-10 — 2010-08); research assistant (2010-05 — 2010-08)
- Hanno Koeslag; developer (2010-01 — 2010-05)
- Maarten Jacobs; developer (2009-10 — 2009-12)
