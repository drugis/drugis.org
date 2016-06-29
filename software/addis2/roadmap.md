---
layout: content
title: ADDIS 2 roadmap
---

This page outlines the development plan for ADDIS 2. See the [requirements](requirements) and [architecture](architecture) pages for some context.

Phase 1: component prototyping
------------------------------

#### Status: completed

In this phase we aim to develop prototypes of several 'high risk' components, i.e. those with significant technical questions remaining to be answered.
These include:

 - [DONE] R package for network meta-analysis: [gemtc](/software/r-packages/gemtc)
 - [DONE] R packages for multiple criteria decision analysis (MCDA): [smaa](/software/r-packages/smaa), [hitandrun](/software/r-packages/hitandrun)
 - [DONE] The [Patavi](https://github.com/joelkuiper/patavi) web service wrapper for R
 - [DONE] [User interface for MCDA preference elicitation](https://mcda.drugis.org/) based on the R packages and Patavi as proof-of-concept
 - [DONE] Read-only version of the TrialVerse database and ConceptMapper semantic store, including an importer for ADDIS 1.x files
 - [DONE] Throw-away prototype of analysis component ADDIS-core that constructs network meta-analysis datasets from the TrialVerse database
 - [DONE] Development of a 'visual identity' for both the drugis.org website and web applications
 - [DONE] User management and security, and implementation of server-side storage of preferences in mcda-web

Phase 2: analysis feature parity
--------------------------------

#### Status: in progress

In this phase we aim to duplicate the core analysis features of ADDIS 1.x in the web-based framework. The main deliverables include:

 - [DONE] Basic user interface for network meta-analysis based on the gemtc R package and Patavi
 - [IN PROGRESS] Complete user interface for network meta-analysis
 - Development of the ADDIS-core component:
    - [DONE] Definition of interventions and outcomes of interest
    - [DONE] Construction of network meta-analysis datasets given a fixed set of trials from TrialVerse (&leq; 1,000)
    - [DONE] Construction of MCDA problems given several network meta-analyses
    - [DONE] Construction of MCDA problems given a single trial

Phase 3: data management and search
-----------------------------------

#### Status: in progress

 - Study management
   - [DONE] View study
   - [DONE] manual input study
   - [IN PROGRESS] create mappings (conceptmapper)
   - [DONE] edit study
   - [IN PROGRESS] clinicaltrials.gov import
 - Versioning
   - [DONE] exploration of options
   - [DONE] prototype
   - [DONE] user interface
   - [DONE] production-ready backend
 - Review/Search
   - [IN PROGRESS] query/search dataset
   - deduplication and annotations for review
   - output: set of (trials + versions) for analysis in ADDIS-core component

Open questions are:

 - How do we support "branching", i.e. multiple different extractions of the same study? This will inevitably happen when the number of users increases.

Phase 4: GetReal analyses
-------------------------

#### Status: awaiting input from other teams (deliverable: mar 2016)

  - [DONE] Network meta-regression analysis

Phase 5: GetReal finalization
-----------------------------

#### Status: awaiting evaluation (deliverable: dec 2016)
