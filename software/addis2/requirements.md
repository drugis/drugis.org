---
layout: content
title: ADDIS 2 requirements
---

Functional requirements
-----------------------

Initially, the functionality available in ADDIS 1 is the template for the ADDIS 2 functional requirements (see the [ADDIS 1 retrospective](/software/addis1/retrospective)).
Therefore, the initial functional requirements are:

 * Evidence synthesis using network meta-analysis in a Bayesian (Markov chain Monte Carlo) framework.
 * Multiple Criteria Decision Analysis (MCDA) methods to assess trade-offs between multiple outcomes.
 * A structured database of clinical trials, in which especially the structure of trials is well captured. Measurements can be coupled to specific arms, outcomes, and time points in the trial.
   Between-trial analysis is enabled by "mapping" the outcomes and interventions in each trial to globally defined entities.
   The data is sufficiently structured to enable the EMA D80 summary of efficacy table to be filled in automatically.
 * Semi-automated import of protocol and results from ClinicalTrials.gov.
 * With an appropriately filled database, the system guides the creation of meta-analyses and benefit-risk analyses. This should allow treatments to be defined as individual drugs or combination treatments, distinguishing between different dose ranges if necessary.

Feedback on ADDIS 1 has been gathered as a source of additional requirements.
These are typically at a more fine-grained level of detail than the high-level requirements outlined above.
In addition, as part of the [IMI GetReal project](/about/projects), functional requirements related to the prediction of relative effectiveness from randomized data will be defined.

Non-functional requirements
---------------------------

We identify the main goals and non-functional requirements of the ADDIS 2 re-development effort according to five key concerns: valorization, development, research, ecosystem, and learning.

### Valorization
The system should generate sufficient revenue to support its continued development and operation.
Since the business model has not determined, we focus on concerns that are likely to be common to potential approaches.

  - V1 Custom variants for different audiences, such as regulators, reimbursement authorities and industry (product line)
  - V2 `In-house' deployments of the system for when the analyses are confidential / sensitive
  - V3 Access to internal organization data, possibly in conjunction with public data
  - V4 Ease of use: the system should visually attractive to 'sell' it, and be easy to use to limit frustrations and the need for training

### Development

System development should be efficient, agile, and sustainable.

  - D1 Analyses are often computationally intensive; they should run quickly and the system should scale to support many such computations in parallel if needed 
  - D2 There should be exibility in choosing the right technologies, platforms, and frameworks to implement specific functionality (e.g. statistical computing using R and user interfaces using HTML + JavaScript)
  - D3 The system should be maintainable and hence divided up in loosely coupled components with well-defined APIs
  - D4 To ensure our public APIs are functioning in an optimal manner, our own software should use those APIs 
  - D5 The integrity of data should be closely guarded and all data should have clear provenance and versioning information

### Research

The system should be an enabler for our own research and contribute to the success of grant proposals.

  - R1 Rapid prototyping of new analyses and user interfaces to support new research questions
  - R2 A large database to do research and meta-research
  - R4 Transparency of implementation (open source)
  - R5 Publishable (high quality) graphics and tables 

### Ecosystem

For the ADDIS concept to work, it is critical that structured clinical trials data are available. It is unlikely that any one organization will be able to achieve this. Therefore, we should aim to 'bootstrap' an open ecosystem in which structured clinical trials data can be shared.

  - E1 Create a single collaborative portal for data extraction and sharing (open access / source)
  - E2 Enhance the efficiency of systematic review by 'closing the information chain' (i.e. capturing the entire process from literature screening to analysis)
  - E3 Enable the exible re-use of data by enabling the definition, re-definition and mapping of meta-data (it should be possible to integrate data extracted by independent teams by mapping the meta-data)
  - E4 Enable automated (third party) data extraction systems (bots) to contribute
  - E5 The system(s) should be easy to use and hassle-free to use (e.g. single sign-on)
  - E6 All data and analyses can be traced back to their ultimate source
  - E7 Third parties should be able to develop new analysis tools and decision support systems based on the available data

### Learning

The system should promote the use of structured, transparent, and quantitative methods in health care policy decisions.

  - L1 Enable access to 'complex' methods and tools through a usable interface for non-experts
  - L2 Clear in-system documentation and links to further reading (e.g. methodology papers)
  - L3 Raise awareness of newer statistical and decision making methods by implementing and applying them
