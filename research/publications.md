---
layout: default
title:  Publications
---

### Journal articles

{% bibliography --query @article --file publications %}

### Conference proceedings 

{% bibliography --query @inproceedings --file publications %}

### PhD Theses

{% bibliography --query @phdthesis,@mastersthesis,@bachelorsthesis --file publications %}

### Research reports

{% bibliography --query @techreport --file publications %}

### Abstracts and presentations

{% bibliography --query @misc --file publications %}
