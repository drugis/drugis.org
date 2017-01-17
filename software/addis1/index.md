---
layout: content
title: ADDIS 1.x
---

<img src="/images/addis1/addis.png" class="screen-shot right">

Aggregate Data Drug Information System (ADDIS) 1.x is a proof-of-concept system that allowed us to simultaneously discover the possibilities of and the requirements on a database of structured clinical trials data.
We support the automated discovery and (meta-)analysis of trial data, as well as benefit-risk assessment.

### Current status

The latest version of ADDIS 1.x is [ADDIS 1.16.8](/software/addis1/addis1.16), released on 2016-11-14.

From April 2009 until October 2012, we released a new major version of ADDIS approximately every 3 months.
The last major release of ADDIS 1.x was [ADDIS 1.16](/software/addis1/addis1.16), released on 2012-10-04.
From October 2012, ADDIS development is in 'maintenance mode', meaning that no new major releases are planned.
Releases will be made as needed, primarily to fix bugs.

Work is now proceeding on the [ADDIS 2](/software/addis2) web-based system for health care policy decision support.
See the [ADDIS 1.x retrospective](/software/addis1/retrospective) for a technical evaluation of ADDIS 1.x and motivations for the development of a new system.

### Citing ADDIS 1.x

If you use ADDIS in your work and you would to cite us, please cite the following reference:

 - {% reference addis-dss %}

### Documentation

Unfortunately documentation for ADDIS is currently a bit sparse.
We are working on providing more information.
The following is already available:

 - {% reference addis-dss %}
 - {% reference addis-mtc-tutorial %}
 - Gert van Valkenhoef, ["Add study in ADDIS 1.8"](http://vimeo.com/25770968), 2011.

Our [publications page](/research/publications) lists additional journal papers that explain the methodology and algorithms implemented in ADDIS.
Also see the list of ADDIS versions below for information on individual releases.

### Components and source code

ADDIS 1.x uses the [GeMTC GUI](/software/addis1/gemtc) component for network meta-analysis and [JSMAA](http://smaa.fi/jsmaa) for multiple criteria decision analysis (MCDA).
Source code is available from the [drugis.org organization on GitHub](https://github.com/drugis/):

 - [drugis/addis on GitHub](https://github.com/drugis/addis)
 - [drugis/mtc on GitHub](https://github.com/drugis/mtc)
 - [drugis/jsmaa on GitHub](https://github.com/drugis/jsmaa)
 - [drugis/drugis-common on GitHub](https://github.com/drugis/drugis-common)

### ADDIS Version History

  - [ADDIS v0.2](/software/addis1/addis0.2 "ADDIS v0.2"), released 2009-06-30.
  - [ADDIS v0.4](/software/addis1/addis0.4 "ADDIS v0.4"), released 2009-11-26.
      - ADDIS v0.4.1, released 2009-12-08.
  - [ADDIS v0.6](/software/addis1/addis0.6 "ADDIS v0.6"), released 2010-02-12.
      - ADDIS v0.6.1, released 2010-02-16.
  - [ADDIS v0.8](/software/addis1/addis0.8 "ADDIS v0.8"), released 2010-04-27.
      - ADDIS v0.8.1, released 2010-05-07.
  - [ADDIS v0.10](/software/addis1/addis0.10 "ADDIS v0.10"), released 2010-06-21.
  - [ADDIS v1.0](/software/addis1/addis1.0 "ADDIS v1.0"), released 2010-09-09.
  - [ADDIS v1.2](/software/addis1/addis1.2 "ADDIS v1.2"), released 2010-09-27.
      - ADDIS v1.2.1, released 2010-10-21.
  - [ADDIS v1.4](/software/addis1/addis1.4 "ADDIS v1.4"), released 2010-12-20.
  - [ADDIS v1.6](/software/addis1/addis1.6 "ADDIS v1.6"), released 2011-04-15.
      - ADDIS v1.6.1, released 2011-06-05.
      - ADDIS v1.6.2, released 2011-06-10.
  - [ADDIS v1.8](/software/addis1/addis1.8 "ADDIS v1.8"), released 2011-07-01.
  - [ADDIS v1.10](/software/addis1/addis1.10 "ADDIS v1.10"), released 2011-11-04.
      - ADDIS v1.10.1, released 2011-11-28.
  - [ADDIS v1.12](/software/addis1/addis1.12 "ADDIS v1.12"), released 2012-02-22.
      - ADDIS v1.12.1, released 2012-03-16.
      - ADDIS v1.12.2, released 2012-03-29.
      - ADDIS v1.12.3, released 2012-04-25.
      - ADDIS v1.12.4, released 2012-05-14.
      - ADDIS v1.12.5, released 2012-05-22.
  - [ADDIS v1.14](/software/addis1/addis1.14 "ADDIS v1.14"), released 2012-06-11.
      - ADDIS v1.14.1, released 2012-08-01.
  - [ADDIS v1.16](/software/addis1/addis1.16 "ADDIS v1.16"), released 2012-10-04.
      - ADDIS v1.16.1, released 2012-10-15.
      - ADDIS v1.16.2, released 2012-12-03.
      - ADDIS v1.16.3, released 2013-01-21.
      - ADDIS v1.16.4, released 2013-07-18.
      - ADDIS v1.16.5, released 2013-09-20.
      - ADDIS v1.16.6, released 2015-03-26.
      - ADDIS v1.16.7, released 2016-07-15.
      - ADDIS v1.16.8, released 2016-11-14.
