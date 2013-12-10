---
layout: content
title: ADDIS 2 roadmap
---

This page outlines the development plan for ADDIS 2. See the [requirements](requirements) and [architecture](architecture) pages for some context.

Phase 1: component prototyping
------------------------------

#### Status: in progress

In this phase we aim to develop prototypes of several 'high risk' components, i.e. those with significant technical questions remaining to be answered.
These include:

 - [DONE] R package for network meta-analysis: [gemtc](/software/r-packages/gemtc)
 - [DONE] R packages for multiple criteria decision analysis (MCDA): [smaa](/software/r-packages/smaa), [hitandrun](/software/r-packages/hitandrun)
 - [DONE] The [Patavi](/software/addis2/patavi) web service wrapper for R
 - [DONE] User interface for MCDA preference elicitation based on the R packages and Patavi as proof-of-concept
 - [DONE] Read-only version of the TrialVerse database and ConceptMapper semantic store, including an importer for ADDIS 1.x files (FIXME: link to blog post)
 - [DONE] Throw-away prototype of analysis component ('ADDIS 2') that constructs network meta-analysis datasets from the TrialVerse database
 - [IN PROGRESS] Development of a 'visual identity' for both the drugis.org website and web applications
 - [IN PROGRESS] User management and security, and implementation of server-side storage of preferences in mcda-web

Phase 2: analysis feature parity 
--------------------------------

#### Status: planning

In this phase we aim to duplicate the core analysis features of ADDIS 1.x in the web-based framework. The main deliverables include:

 - User interface for network meta-analysis based on the gemtc R package and Patavi
 - Development of the 'ADDIS 2' central analysis component:
    - Definition of interventions and outcomes of interest using ConceptMapper
    - Construction of network meta-analysis datasets given a fixed set of trials from TrialVerse (&leq; 1,000)
    - Construction of MCDA problems given several network meta-analyses
    - Construction of MCDA problems given a single trial

Phase 3: TrialVerse
-------------------
- Study management
  - View study
  - manual input study
  - create mappings (conceptmapper)
  - edit study
  - clinicaltrials.gov compelte import
- Versioning
  - needs exploration
  - branching? 
  - applies to both studies and mappings
  - DAtomic (suggestion Joel)
  - ontological versioning **out of scope**
- Review/Search
  - query/search dataset
  - deduplication and annotations for review
  - versioning from review process

Phase 4: profit!
----------------
