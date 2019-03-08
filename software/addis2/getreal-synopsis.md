---
layout: content
title: "ADDIS in GetReal: synopsis"
---

Aggregate Data Drug Information System (ADDIS) is a decision support system based on a structured database of clinical trials.
The development of ADDIS is being continued within the IMI GetReal project.
This document is intended to be a short primer on ADDIS and our plans within GetReal, linking to other documents for more in-depth discussion.

Evidence-based health care policy decision making is currently expensive and time consuming because retrieving the relevant data is extremely difficult.
The long-term goal of ADDIS is to eliminate the need for (repeatedly) performing manual screening and data extraction, and deliver more timely evidence to more decision makers.

## ADDIS before GetReal

The Aggregate Data Drug Information System (ADDIS) was developed during the Escher project to enable evidence-based decision support for marketing authorization decisions.
It enables automated network meta-analysis and multiple criteria decisions analysis on a structured database of clinical trials.
"ADDIS 1.x", as we now call this version of the software, is a stand-alone desktop application that you can download and install from [drugis.org](http://drugis.org/software/addis1).
ADDIS 1.x has been evaluated, see the [ADDIS 1.x retrospective](http://drugis.org/software/addis1/retrospective), from which we concluded that altough the system is methodologically strong, the current architecture is not future-proof in the following ways:

- Sharing datasets is difficult because of the stand-alone nature of the software, and datasets can not easily be merged.
- Reusing existing statistical code is highly desirable but not possible, forcing us to re-implement existing statistical code.
- The database is not sufficiently dynamic, making it difficult to make incremental improvements to an existing dataset.

## ADDIS in GetReal

Within the GetReal project, we aim to fulfill the following broad goals:

 1. Re-development as a collaborative web-based tool
 2. Enhancement of the evidence synthesis capabilities to predict relative effectiveness

The first will enable the consortium to collaborate on building larger datasets, and will also make it easier to incorporate statistical code developed by project partners.
The second goal will help promote the outputs of the GetReal project in several ways:

- Deliver well-tested and well-designed implementations of the statistical methods
- Deliver a user-friendly interface to make those methods accessible to a wider audience
- Enable interactive show-cases to be developed based on the case studies

## D4.12: conceptual framework and specification

Due M12.

Several activities are planned to inform the requirements and technical specification of "ADDIS 2".
These activities have been ongoing since the GetReal description of work was formulated, and will continue while the software development is already ongoing (since Dec 2013).
The current specification is available on the [ADDIS 2 page](http://drugis.org/software/addis2/) on drugis.org.

### Review of existing software

We will identify key software in a few areas of interest and do an in-depth analysis of their capabilities and how those relate to ADDIS (as a competitor, inspiration, or re-usable component).
We are looking for software in these broad categories:

- ADDIS 1.x as a source of requirements (see [retrospective](http://drugis.org/software/addis1/retrospective) and [ADDIS 2 user stories](http://drugis.org/software/addis2/stories))
- Existing graphical user interfaces for (complex) meta-analysis as a source of requirements. Examples could be Cochrane RevMan, comprehensive meta-analysis, etc.
- Existing graphical user interfaces for predictive modeling as a source of requirements.
- Existing statistical packages for (network) meta-analysis for potential re-use, preferably R packages, open source. Currently gemtc is used. R code from Ioannina needs to be evaluated.
- Existing statistical packages for predictive modeling, preferably R packages, open source. There is gems from Bern.

We expect that project partners will have experience with relevant software, and will be able to provide input both in terms of what software we should look at and their evaluation.
Since the literature reviews already being conducted are also tagging software, additional relevant software may be identified through these means.
We do not plan to perform a separate literature review to identify software, because this would be very time consuming with low chances of success.
Moreover, there is no real need to be comprehensive in terms of what software exist, but rather to look at key software packages.
We will search several other sources, such as specialized journals (e.g. J Stat Software), statistical package archives (e.g. CRAN), WikiPedia, and Google.

### Trials database: technical analysis

The specification and implementation of the the trials database will be driven by requirements from two directions:

 - The need to construct evidence synthesis models (meta-analysis, predictive modeling, etc.) from unambiguous and unchanging structured data.
 - The need to build a trials database from heterogeneous and mostly text-based data sources, where ambiguities need to be resolved and datasets are continuously being improved, and disagreements about the best representation may happen.

Two separate APIs (application programming interfaces) will be designed:

 - A read-only API geared towards constructing analyses. This will serve unambiguous and clearly identified (timestamped) static datasets.
 - A read-write API that enables data extractions to be discussed as a collection of factual statements from which the above can be constructed at any time.

Note that this is significantly different from how data extraction is often done for systematic reviews.
Rather than extracting a narrow set of pre-specified outcomes, we seek to link all available data from a trial to a model of the trial's design.
This will enable analyses to be constructed in ways not foreseen at the time of extraction, thereby speeding up future analyses.

### Communication with stakeholders

Communication with stakeholders is an ongoing process.
We hope to set up a small group willing to participate in an ongoing discussion on the development of the software and the specification.

 - The development team was present at the face-to-face meeting in January 2014.
Gert presented ADDIS and the plans for GetReal.
Gert and Chrissie had a short meeting about the UMCG / Amgen shared deliverables regarding the software.

 - The software was briefly discussed during several of the WP4 TCs.
There is a scheduled 30 minute block at the April 2014 TC.
However there is a need for more focussed discussion - Chrissie will set up separate TCs to this end.

 - Gert visited Chrissie at Amgen (2 April 2014).
The following actions were agreed upon: (1) Gert to produce potential data flow diagrams for ADDIS / case studies for WP4 feedback, (2) Gert to find alternatives to MIT Haystack group for support on semantic web / social computing aspects, (3) Gert to start list of software to review, (4) Chrissie to draft software review data sheet, (5) Gert and Chrissie to draft questions for stakeholder questionnaire, (6) Gert to create slide deck for April WP4 TC, and (7) Chrissie to set up regular software TCs after the April WP4 TC.

 - Gert visited Keith Abrams' group at Leicester (3 april 2014) to discuss GetReal and related work.

Misc. notes:

 - From all-hands meeting it emerged that the "Lu & Ades" inconsistency model is no longer considered state of the art. ADDIS 2 will not use this model (and it is not available in gemtc).

## D4.13: initial development

Due M21.

We will develop ADDIS 2 in an iterative manner, with quarterly publicly visible releases.
The basic functionality for GetReal should be in place by M21, for in-depth user testing.
However, we expect project participants to also provide feedback on the quarterly releases.

## D4.14: user testing, further development and dissemination

Due M39.

In this phase we will more actively seek feedback on the (now relatively mature) system and implement specific functionality to support the GetReal (WP4 / WP1) case studies.
In addition to the software, the final deliverable will consist of user documentation and an explanatory paper in the scientific literature.

## Documentation

- General documentation of ADDIS 2
  - [ADDIS 2 home page](/software/addis2/)
  - [ADDIS 2 requirements overview](/software/addis2/requirements)
  - [ADDIS 2 architecture overview](/software/addis2/architecture)
  - [ADDIS 2 roadmap](/software/addis2/roadmap)
  - [ADDIS 2 user stories](/software/addis2/stories) - fine-grained requirements
  - [ADDIS in GetReal proposal](/files/20130121-addis-getreal-proposal.pdf) (PDF)   drafted for Matthias Egger 2013-01-21
  - [Kick-off meeting slides](/files/valkenhoef-pres-getrealkickoff2014.pdf) (PDF)   2014-01-29
  - Data management (TrialVerse / ConceptMapper)
  - [Problem statement paper](/files/valkenhoef-maiha2014.pdf) (PDF) under review for   [MAIHA 2014](http://www.cebm.brown.edu/maiha)
  - [Long-term vision poster](/files/valkenhoef-poster-ispor2013.pdf) (PDF) presented   at ISPOR 2013
  - [ConceptMapper design document](/files/20131028-conceptmapper-design.pdf) (PDF)   2013-10-28
  - [Current TrialVerse database schema](/files/20130912-trialverse-db.pdf) (PDF)   updated 2013-09-12
  - [Current ConceptMapper setup](https://github.com/drugis/trialverse/blob/feature/  triplestore/triplestore/README.md)
  - TODO: plans for dealing with PDF; [Spa](https://github.com/joelkuiper/spa)
  - TODO: links to useful sources of information / papers / source code
  - ADDIS 2 source code
  - [ADDIS 2 core](https://github.com/drugis/addis-core)
  - [ADDIS 2 MCDA](https://github.com/drugis/mcda-elicitation-web)
  - [TrialVerse prototype](https://github.com/drugis/trialverse)
  - [ADDIS 2 prototype](https://github.com/drugis/addis2) - no longer updated
  - [ADDIS 2 dockerfiles](https://github.com/drugis/dockerfiles) - for server deployment
  - [ADDIS 2 CSS](https://github.com/drugis/drugis-css) - style sheets used by all   components
  - Statistical analysis / R packages
  - The [Patavi](https://github.com/joelkuiper/patavi) web service wrapper for R
  - GeMTC [CRAN](http://cran.r-project.org/package=gemtc); [source](https://github.com/  gertvv/gemtc)
  - hitandrun [CRAN](http://cran.r-project.org/package=hitandrun); [source](https://  github.com/gertvv/hitandrun)
  - smaa [CRAN](http://cran.r-project.org/package=smaa); [source](https://github.com/  gertvv/rsmaa)
  - See [publications](/research/publications) for documentation of many of the methods
