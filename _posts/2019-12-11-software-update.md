---
layout: post
title: "ADDIS software suite updated"
author: karlis
excerpt: Development of MCDA Enterprise; Minor releases of ADDIS, GeMTC, and MCDA; Deployment on Kubernetes cluster
categories: news
---

In parallel to maintaining and upgrading our public software we have developed an initial Enterprise version of our web-based Multiple Criteria Decision Analysis (MCDA) tool. This version is commercially licensed and offers expanded functionality:

- Sign-in with non-Google credentials
- User rights management
- SMAA analysis using several preference scenarios

Please [contact](http://drugis.org/contact) us for further details, to purchase a license, or to submit feature requests.

We have also developed procedures (besides the existing ones for Linux and docker containers) to deploy our tools in the following environments:

- Kubernetes
- Microsoft Windows (requires Docker or Docker toolbox)

A summary of features and bug fixes:

### ADDIS

- User can now archive a dataset
- Minor bugfixes

### MCDA

- Manual input redesign:
  - A data source is no longer automatically created when adding a criterion
  - Input of unit of measurement, strength of evidence, and uncertainties now moved to step 2
  - Alternatives can now be edited after adding
  - Separate the effects table into a deterministic and a SMAA tab.
  - Ability to automatically generate distributions for the SMAA tab using values entered in the Deterministic tab
  - Support free text in cells
  - Support range effects and distributions
  - Where possible, during analysis subtitute missing values with ones from the other tab  
- Redesign unit of measurement to have three options:
  - Proportion (decimal), with values between 0 and 1
  - Proportion (percentage), with values between 0 and 100
  - Custom, with user-defined bounds
- Redesigned workspace settings
- Each data source can now have its own unit of measurement
- On the Overview tab, effects table is no longer displayed. Instead, criteria and datasources are displayed in a similar way to the manual input. In addition, the available measurements are displayed for each datasource and alternative.
- Cells not useable for analysis are now highlighted in the effects table if 'Values used for analysis' option is selected
- On the Preferences tab, added a button to reset the weight preferences
- On the SMAA tab, the user can now set whether to consider uncertainty in measurements and weights (if possible)
- On the SMAA tab, added the Measurements table containing the input for the analysis
- The SMAA tab is disabled if:
  - No preferences are provided, or
  - There is no uncertainty (all measurements are deterministic and weights are provided through matching or precise swing weighting)

- User can now adjust the width of columns in the effects table (Firefox and Chrome)
- Bugfixes

### GeMTC

- Minor bugfixes
