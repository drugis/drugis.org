---
layout: content
title: ADDIS 2 nonfunctional requirements
---

Nonfunctional Requirements
------------

We identify the main goals and requirements of ADDIS 2 according to five key concerns: valorization, development, research, ecosystem, and learning.


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