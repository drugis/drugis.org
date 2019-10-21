---
layout: content
title: The team
---

<div class="grid-x">
  <div class="cell">
    <h3>Core team</h3>
  </div>
</div>

{% for member in site.data.members %}
  <div class="grid-x grid-margin-x">
    <div class="cell">
      <hr>
    </div>
    <div class="cell large-8">
      <h4>{{member.name}}</h4>
      <h5>{{member.role}}</h5>
      <p>{{member.bio | markdownify}}</p>
      <p>
      Find out more on his <a href="{{member.homepage-url}}" title="{{member.name}}">personal page</a>.
      </p>
    </div>
    <div class="cell large-offset-1 large-2">
      <img class="screen-shot" src="/images/about/{{member.picture-url}}">
    </div>
  </div>
{% endfor %}
<hr>

## Evangelists

- Erik Buskens; HTA advisor
- Bert de Brock; advisor

## Students

- Aida Baxhaku - working on data import.

See [MSc projects](/research/msc-projects) for opportunities.

## Previous contributors

- Connor Stroomberg; developer (2013-12 — 2016-08)
- Joël Kuiper; developer (2012-04 — 2015-07)
- Bob Goeree; MSc student & intern (2013-09 — 2014-09)
- Tjerk Heringa (2014-04 — 2014-06)
- Wouter Reckman; developer (2012-04 — 2012-09)
- Margreth Venaely Kileo; MSc thesis project (2011-02 — 2011-08)
- Jing Zhao; MSc thesis project, KTH ICT (2010-03 — 2010-06); research assistant 0.2FTE (2011-01 — 2011-06)
- Ahmad Kamal; developer (2010-08 — 2011-03)
- Florin Schimbinschi; developer (2010-09 — 2011-06)
- Dr. Tommi Tervonen; researcher & developer (2009-04 — 2010-08)
- Tijs Zwinkels; developer (2009-10 — 2010-08); research assistant (2010-05 — 2010-08)
- Hanno Koeslag; developer (2010-01 — 2010-05)
- Maarten Jacobs; developer (2009-10 — 2009-12)
