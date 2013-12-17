---
layout: content
title: The team
members:
  - name: "Gert van Valkenhoef"
    role: "ADDIS project lead"
    bio: "Gert received his PhD (University of Groningen, 2012) for his methodological work on evidence-based decision support for drug benefit-risk assessment. During his PhD he also led the software development team that implemented those methods in ADDIS 1. He now oversees the development of ADDIS 2 for the IMI GetReal project. Gert holds an MSc in Artificial Intelligence (University of Groningen, 2009)."
    picture-url: "gert.jpg"
    homepage-url: "https://gertvv.nl/"
  - name: "Douwe Postmus"
    role: "Lead MCDA and HTA"
    picture-url: "douwe.jpg"
    since: "2013-09"
  - name: "Connor Stroomberg"
    role: "Developer"
    picture-url: "connor.jpg"
    since: "2013-12"
  - name: "Daan Reid"
    role: "Developer"
    bio: "Daan first joined the ADDIS team in September 2010. After working on several other software development projects within the UMCG he rejoined the team on October 2013 to work on ADDIS 2. Daan has a PhD in theoretical biology (University of Groningen, 2010) and an MSc in Artificial Intelligence."
    picture-url: "daan.jpg"
    homepage-url: "http://steamcommunity.com/id/osmosis"
    since: "2013-12"
  - name: "Joël Kuiper"
    role: "PhD student"
    picture-url: "joel.jpg"
    since: "2012-04"
   
---

<div class="row">
	<div class="large-12 columns">
<h2>Core team</h2>
	</div>
</div>

	{% for member in page.members %}
<div class="row">
	<hr>
	<div class="large-8 columns">
		<h4>{{member.name}}</h4>
		<h5>{{member.role}}</h5>
		<p>{{member.bio}}</p>
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

- Joël Kuiper; PhD student, BioSHaRe liaison; team member since 2012-04
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
