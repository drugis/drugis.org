---
layout: content
title: MSc students
---

We offer MSc students the opportunity to collaborate with us on various MSc projects. Examples of topics that we are interested in include:

 - [Data import](#import)
 - [Reconstructing time-to-event (survival) data from Kaplan-Meier curves: a constraint satisfaction problem](#survival-csp)
 - [User interfaces for detecting heterogeneity in meta-analysis](#heterogeneity)
 - [Low-level serialization of Bayesian Hierarchical Models](#bhm-dsl)

<a name="import"></a>
### Data import

ADDIS currently expects all relevant meta-data about a clinical trial to be entered prior to the entry of any measurement data. Primarily, this consists of the variables that have been measured, the times at which they have been measured, and the (sub-) populations for which they have been measured. This defines a three-dimensional table-like structure. The user is then expected to (manually) input a measurement for each cell. The measurement consists of specific statistical summaries, such as (count, sample size) or (mean, standard deviation, sample size). Some or all of this information may be missing. Thus, we first specify what should be there, and then enter as much data as we can find.

However, quite often one starts out with some semi-structured data (such as an entry on ClinicalTrials.gov or a table in a report) with partially or completely missing meta-data. Thus, we would like to extend ADDIS so that such data can be imported and annotated in a flexible way. The thesis work could address some or all of the following topics:

 * Analysis of the current ClinicalTrials.gov import functionality and its shortcomings. Re-design of the import process to allow more flexible handling of missing meta-data and user-driven disambiguation of the data (e.g. categorical vs. multiple time-point measurements which can not be distinguished in the ClinicalTrials.gov data model).

 * Import of semi-structured (e.g. HTML) data tables, with user-driven annotation of meta-data.

 * Conversion of unstructured (i.e. image-based) data tables to structured data tables.

 * Discovery of data tables in legacy documents (e.g. PDF or scanned reports).

 * Other relevant topics not specified above.

Note that for most of the above there is relevant previous work in the scientific literature, which will need to be evaluated prior to implementation.

<a name="survival-csp"></a>
### Reconstructing time-to-event (survival) data from Kaplan-Meier curves: a constraint satisfaction problem

Time-to-event data are arguably the most important outcomes of clinical studies.
The prototypical time-to-event outcome is mortality: does treatment actually extend the lifespan of patients?
Such data are usually reported in several formats: the total number of events over the duration of the study, a hazard ratio (and confidence interval) that summarizes the differences of the instantaneous risk of death in each treatment group over the duration of the study, and a Kaplan-Meier curve that shows the proportion of patients alive at each point in time of the study:

![Kaplan-Meier curve](http://www.ganfyd.org/images/c/cd/Kaplan-Meier_example.png)

Meta-analysis of time-to-event data is important to summarize the evidence from multiple studies and on multiple interventions.
Such meta-analyses are often performed based on the total number of events and/or the summary hazard ratio [[e.g. Woods et al. 2010]](http://dx.doi.org/10.1186/1471-2288-10-54), but this assumes that the hazard ratio is constant for the duration of the study.
This assumption may not be warranted, and better models can be fitted when individual patient data is available [[e.g. Jansen 2011]](http://dx.doi.org/10.1186/1471-2288-11-61).
However, individual patient data is often hard or impossible to obtain, and recent work has shown that it can instead be reconstructed from the Kaplan-Meier curve, to considerable accuracy [[Guyot et al. 2012]](http://dx.doi.org/10.1186/1471-2288-12-9).

The reconstruction method has correctly worked out the mathematical constraints that define how the individual patient data should be reconstructed.
However, the implementation leaves several things to be desired.
Exact information, such as the total number of events, or the total number of patients, is not treated as a hard constraint, while approximate information extracted from the Kaplan-Meier curve is treated as if it were exact.
Moreover, the code is completely procedural and very difficult to adapt.

This master thesis project will improve the state of the art in the following ways:
 1. Reformulate the method of Guyot et al. as a constraint satisfaction problem, making sure that hard constraints are always met.
 2. Making use of the more declarative and generalizable CSP formulation, extend the method to simultaneously analyze multiple survival curves. This may arise when Kaplan-Meier curves are available for multiple mutually exclusive outcomes, and/or aggregates of other outcomes.

<a name="heterogeneity"></a>
### User interfaces for detecting heterogeneity in meta-analysis

Combining evidence from multiple trials is a key step in many evidence based
decisions. While the statistical models to do this are relatively simple,
determining whether or not they can safely be applied to a given set of trials
is not.

ADDIS currently enables the user to search for trials matching certain
criteria (e.g. disease and drugs studied), optionally exclude some trials, and
then combine the included trials using appropriate statistical methods.
However, it does not make the issue of assessing the suitability of the trials
obvious. Ways to draw attention to this issue, and to help the user resolve
it, should be offered at several stages:

 * Up-front identification of potential confounders (e.g. trial duration,
   inappropriate dosing, differing study populations, etc.) by the user and/or
   suggested by the system.

 * Up-front automatic (on request?) analysis of the data for unexpectedw
   associations.

 * After the fact analysis of heterogeneity, inconsistency, and potential
   biases (using existing statistical models and visualizations).

The project could start with a number of data sets from the literature that
are known to exhibit one or more forms of bias and confounding, and assess
whether or not these are identified by users in the current system. Then,
proposals to improve the situation should be generated and tested.

<a name="bhm-dsl"></a>
### Low-level serialization of Bayesian Hierarchical Models

Markov Chain Monte Carlo (MCMC) methods enable the general purpose estimation of Bayesian Hierarchical Models. Their implementation in widely available software has revolutionized the practice of statistics, and popularized the Bayesian approach to statistics. Many alternative implementations of MCMC are available, such as WinBUGS, OpenBUGS, JAGS, STAN, Scythe, PyMCMC, YADAS, etc. All of them have specific strengths and weaknesses, with some being much more efficient at estimating certain models than others. Moreover, in some cases Approximate Bayesian Computation (ABC) offers a powerful and more computationally efficient alternative to MCMC methods.

In current MCMC software, two approaches to model specification can be distinguished. Several software packages offer a higher-level model specification language that allows a single specification to be applied to different data sets. This approach is taken by the BUGS family of MCMC software (WinBUGS, OpenBUGS, JAGS) as well as STAN. Other MCMC packages offer a library for a specific programming language, and as such model specification consists of calling this library directly. In addition, some MCMC packages implement a variety of sampling algorithms and often include a knowledge system to select the most appropriate algorithm given the structure of the model to be estimated. Other packages implement only a single algorithm or expect the user to select the most appropriate one.

Some software packages enable problem-specific languages or data structures that are subsequently translated to Bayesian Hierarchical models. Examples include the R packages MCMCpack, which offers a collection of models, and GeMTC, which enables the estimation of network meta-analysis models. Such tools are often tightly coupled to the underlying MCMC implementation, since the existing implementations do not interoperate at all. It would be beneficial if alternative MCMC implementations  and ABC tools could be explored for the same model. This would enable:

 * Automated cross-validation of alternative MCMC implementations

 * Comparison of the efficiency of alternative MCMC algorithms and their implementations

 * Large scale evaluation of the accuracy of ABC approaches compared to MCMC

 * Building a meta-database on the efficiency of various algorithms and implementations for different model structures

 * Within one "front-end" application using MCMC estimation, dynamically choosing the best available implementation for the model at hand, without multiple implementations of the model generation algorithm

To enable these use cases, a low-level serialization of Bayesian Hierarchical Models should be developed. The specification format should closely correspond to the Directed Acyclic Graph (DAG) representation of Bayesian Hierarchical models that is used internally by many software packages. The aim is not to construct a human-writeable format, but rather to construct a data structure that is straightforward to translate to API calls for various MCMC libraries. Moreover, it should be straightforward to compile higher-level specification languages, such as BUGS, to this low-level format. Finally, well-specified and convenient JSON and R representations of the format should be specified.

The project should result in:

 1. Specification of the low-level data format

 2. Specification of JSON and R represenations of the format

 3. Implementation of a compiler for the BUGS and/or JAGS language to the low-level format

 4. Implementation of an interpreter for the low-level format using an MCMC implementation of your choice

 5. Implementation of an interpreter for the low-level format using an ABC implementation of your choice
