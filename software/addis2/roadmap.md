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

#### Status: planning (deliverable: mar 2014 / jun 2014)

In this phase we aim to duplicate the core analysis features of ADDIS 1.x in the web-based framework. The main deliverables include:

 - User interface for network meta-analysis based on the gemtc R package and Patavi
 - Development of the ADDIS-core component:
    - Definition of interventions and outcomes of interest using ConceptMapper
    - Construction of network meta-analysis datasets given a fixed set of trials from TrialVerse (&leq; 1,000)
    - Construction of MCDA problems given several network meta-analyses
    - Construction of MCDA problems given a single trial

Phase 3: data management and search 
-----------------------------------

#### Status: scoping (deliverable: dec 2014)

 - Study management
   - View study
   - manual input study
   - create mappings (conceptmapper)
   - edit study
  - clinicaltrials.gov import
 - Versioning
   - needs exploration
   - applies to both studies and mappings
   - DAtomic (suggestion Joel)
   - ontological (i.e. between-study concepts) versioning **out of scope**
 - Review/Search
   - query/search dataset
   - deduplication and annotations for review
   - output: set of (trials + versions) for analysis in ADDIS-core component

Open questions are:

 - How do we manage versions across the TrialVerse/ConceptMapper boundary?
 - How do we support "branching", i.e. multiple different extractions of the same study? This will inevitably happen when the number of users increases.
 - Do we aim to import all studies from ClinicalTrials.gov? This is not a requirement, but would probably generate considerable interest within GetReal and provide sufficient data to properly test the review/search functionality.

Phase 4: GetReal analyses 
-------------------------

#### Status: awaiting input from other teams (deliverable: mar 2016)

Phase 5: GetReal finalization
-----------------------------

#### Status: awaiting evaluation (deliverable: dec 2016)
