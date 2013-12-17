---
layout: content
title: The team
members:
  - name: "Gert van Valkenhoef"
    role: "ADDIS project lead"
    picture-url: "gert.jpg"
    since: "2009-04"
  - name: "Douwe Postmus"
    role: "lead MCDA and HTA"
    picture-url: "douwe.jpg"
    since: "2013-09"
  - name: "Daan Reid"
    role: "Developer"
    picture-url: "daan.jpg"
    since: 2010-09
  - name: "Connor Stroomberg"
    role: "Developer"
    picture-url: "connor.jpg"
    since: 2013-12
---

<div class="row">
	<div class="large-12 columns center">
<h1>Core team</h1>
	</div>
</div>

	{% for member in page.members %}
<div class="row">

	<div class="large-6 columns">
		<h2>{{member.name}}</h2>
		<h3>{{member.role}}</h3>

	</div>
	<div class="large-3 columns">
		<img class="screen-shot" src="/images/about/{{member.picture-url}}">
	</div>
</div>
<hr>
	{% endfor %}

### Evangelists

- Hans Hillege; medical advisor & EMA liaison
- Bert de Brock; advisor

### Students

- Joël Kuiper; PhD student, BioSHaRe liaison; team member since 2012-04
- Bob Goeree; MSc student; team member since 2013-09
- Lourens Elzinga; MSc student, research assistant; team member since 2013-09

### Previous contributors

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
