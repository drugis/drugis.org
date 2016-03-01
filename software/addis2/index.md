---
layout: content
title: ADDIS 2
---

Aggregate Data Drug Information System (ADDIS) is an evidence-based decision support system for [health care policy decision making](/research) that concerns alternative treatment options.
ADDIS 2 is currently under heavy development and far from feature complete.
Our goal is for ADDIS 2 to become a platform on which researchers can collaborate to perform systematic reviews, data extraction, evidence synthesis and decision analysis.

<img src="/images/software/addis2/addis-graphic.png" alt="The ADDIS concept">

We believe that such an integrated system can improve the efficiency and transparency of systematic review and health care policy decision making by several orders of magnitude.
Efficiency can be improved by facilitating easier and more meaningful sharing of data and meta-data, while transparency will be enhanced by linking decisions to the underlying value judgments and clinical data.

Documentation
-------------

After one year of development, the ADDIS 2 project is now (January 2015) becoming useable as an analytical tool.

Our framework of thinking is captured by the following documents:

 - [ADDIS 2 requirements](/software/addis2/requirements)
 - [ADDIS 2 architecture](/software/addis2/architecture)
 - [ADDIS 2 roadmap](/software/addis2/roadmap)

Especially the longer-term plans carry a significant degree of uncertainty.
We expect to keep updating and revising these documents as the work proceeds.
Changes to the documentation can be tracked on GitHub: [drugis/drugis.org](https://github.com/drugis/drugis.org/).

Current status
--------------

The live version of ADDIS 2 currently has components for viewing several pre-imported datasets, creating a personal project based on one of those datasets, and performing analyses within this project. Supported analysis types are multiple criteria decision (benefit-risk) analysis and network meta-analysis.
The current stable version of ADDIS 2 is available at [addis.drugis.org](https://addis.drugis.org). The in-development version, often with more features, is available at [addis-test.drugis.org](https://addis-test.drugis.org).

<img class="screen-shot" src="/images/software/addis2.png" alt="mcda.drugis.org">

You currently need a Google account to sign in, although we plan to switch to [ORCID](http://orcid.org/ "Open Researcher and Contributor ID") once their authentication-only API becomes available.

Source code
-----------

The source code for the ADDIS 2 software is available on GitHub, on [our organization page](https://github.com/drugis/). In addition, source code for the R packages is available from [Gert van Valkenhoef](https://github.com/gertvv/) and for Patavi from [Joël Kuiper](https://github.com/joelkuiper/).

{% include github.html class="right" %}
