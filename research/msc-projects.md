---
layout: content
title: MSc projects
---

### Open MSc projects

 - [Data import](#import)
 - [Reconstructing time-to-event (survival) data from Kaplan-Meier curves: a constraint satisfaction problem](#survival-csp)
 - [User interfaces for detecting heterogeneity in meta-analysis](#heterogeneity)
 - [User interfaces for exploration and visualization of trials](#ui-trials)
 - [Low-level serialization of Bayesian Hierarchical Models](#bhm-dsl)
 - [Clinicians' understanding of preference elicitation questions](#preferences)

### In progress MSc projects

 - [Cost-effectiveness analysis](#cea)
 - [Convergence diagnostics for MCDA / SMAA](#smaa-convergence)

## MSc projects

<a name="import"></a>
### Data import

(Multiple MSc projects possible.)

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

<a name="ui-trials"></a>
### User interfaces for exploration and visualization of trials

ADDIS aims to let users quickly build datasets to answer specific clinical or policy questions. For example, a clinician might want to identify an effective drug that lacks a certain side effect (e.g. sleepiness is not acceptable for a truck driver) and a market regulator may want to compare the efficacy / safety balance of a new drug to a that of a drug authorized last year.

Often, building such a dataset starts with a broad query, returning many trials. Based on the number of trials available and their heterogeneity (differences in study design, interventions, outcome measures, populations), the user may choose to make the query more specific. This project should focus on useful ways of presenting larger sets of trials, including tables, graphs, and charts that provide insight on the aforementioned characteristics.

The project will be based on a heterogeneous set of loosely related trials. Several potential research questions will be formulated. Based on an analysis of the current system and initial usability testing, you will develop several proposals for user interfaces that assist the user in reducing the result set. You will discuss these proposals with the team and with potential users to identify the most promising ones. You will implement prototypes for the top proposals in ADDIS 2 and evaluate them in usability studies.

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

<a name="preferences"></a>
### Clinicians' understanding of preference elicitation questions

Decisions in health care policy are often based on uncertain evidence that
covers multiple criteria, such as efficacy, side effects, and costs. Multiple
criteria decision analysis (MCDA) methods can support these decisions. To do
so, preference information is elicited from the decision maker. Several basic
elicitation procedures exist, which vary in the number and difficulty of the
questions asked. For ADDIS 2, we are developing user interfaces for several of
these elicitation methods. These user interfaces will most likely be used by
health professionals with limited training on MCDA. Thefefore, it is critical
that the elicitation questions are understood by the decision maker (DM), and
can be answered consistently. The MSc project should assess:

 * About the user interface(s):

     + To what degree do DMs understand the elicitation questions being posed.
       (This might be based on self-reporting by DMs)

     + Does the user interface draw attention to the critical aspects of the
       question?

     + Are DMs able to consistently answer questions? (This should be
       experimentally determined, e.g. by asking redundant questions)

     + How can the user interface be enhanced to improve these aspects?

 * About the elicitation procedures (Ordinal SWING, Interval SWING,
   MACBETH):

     + Are DMs able to consistently answer questions? (This should be
       experimentally determined, e.g. by asking redundant questions)

     + When confronted with the consequences of their preference statements
       (i.e. the decision recommendations), do the DMs feel the recommendation
       is appropriate?

     + Is the workload in proportion to the value of the decision support?

An initial set of pilot experiments could be conducted with employees or
medical students at the UMCG. A later set of experiments would ideally be
performed with actual decision makers, e.g. from regulatory or reimbursement
authorities.

<a name="smaa-convergence"></a>
### Convergence diagnostics for MCDA / SMAA

**In progress**

Stochastic multi-criteria acceptability analysis (SMAA) is a method for multiple criteria decision analysis under uncertainty and/or incomplete information. Monte Carlo integration is used to aggregate results over any number of uncertain inputs. Theoretical results on SMAA are based on the assumption that independent samples can be drawn from the input probability distributions. However, this is often not the case, as modern statistical tools often rely on methods that generate a Markov chain, i.e. a "time series" in which each generated sample depends on the previous sample.

It is well known that for general statistical inference the number of iterations required to obtain a representative sample from the posterior distribution can not be determined in advance. Therefore, in Markov chain Monte Carlo (MCMC) methods, convergence is usually assessed based on the actual sample obtained. This thesis project will address the convergence of SMAA when some or all of the inputs are Markov chains. Specifically, the following questions will be addressed:

 * Which outputs of the SMAA analysis should be monitored for convergence? Can the assessment of one output predict the convergence of the others?

 * Which methods are most appropriate for the convergence assessment?

 * When the input is provided by several independent Markov chains, these chains may have wildly varying convergence properties. One chain may have a low per-iteration cost but also slow convergence, while another may have a high per-iteration cost but also quick convergence. In this case, it would be a waste of computational resources to draw an equal number of samples from both. Can heuristics be developed to limit this type of inefficiency?
