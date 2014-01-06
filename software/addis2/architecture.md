---
layout: content
title: ADDIS 2 architecture 
---
{% include addis2-sidenav.html class="left" %}

Architecture
------------
Given that many of the [requirements](/software/addis2/requirements) imply loosely coupled and exibly reusable components with well-defined public APIs (R1, V1, V2, V3, D1, D2, D3, E4, E7), we will assume that a service-based (and web-based) architecture is most appropriate. We distinguish the following components:

  - Web services that implement the different analyses (R1, D1, D2)
  - ADDIS, a 'business intelligence' system for drug benefit-risk analysis (V1, D3, L1) (basically a 'workflow engine' in which different ways of going from a database of trials to analyses can be implemented)
  - TrialVerse, a portal/database where researchers share structured RCT data (V3, D3, D4, E1)
  - TrialMine, a system for literature screening (E2)
  - ConceptMapper, a shared component where definitions (concepts) can be deposited, refined, and mapped (R2, E1, E2, E3)
  - A user management component underlying all systems (V4, D3, E5)

![Addis 2 architecture](/images/software/addis2/architecture.svg)
Figure 1: Overview of the possible future architecture. WS = Web Service

The user-facing systems have a back-end that exposes an API, and an HTML + JavaScript GUI that calls that API (D2, D4). It is intended that this will enable third parties to create additional 'business intelligence' systems based on TrialVerse (E7). Moreover, the API can be used to build, test, and use automated systems for the extraction of data (E4). While the two user-facing systems have clearly separated concerns, they will be tightly integrated (E5), for example using:

  - Single sign-on authentication
  - Shared user and organization profiles
  - Consistent visual identity

We also want to support corporate deployments of the ADDIS system (V2). This is possible because TrialVerse exposes a well-defined API. We can then do the following:

  1. Deploy an internal system exposing company data through the TrialVerse interface (V3)
  2. Deploy an internal version of ADDIS that has access to both TrialVerse and the internal database
(V2)
  3. (Optional) internal deployment of the analysis web services (V2)

To better support this scenario there should be clearly separated read-only (to be used by ADDIS) and read-write (to be used by the TrialVerse GUI) interfaces for TrialVerse.