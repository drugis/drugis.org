---
layout: content
title: GeMTC R package
---

<img src="/images/r-packages/gemtc.png" style="float:right">

The GeMTC R package enables Bayesian network meta-analysis (Mixed Treatment Comparisons, MTC) in R.
Network meta-analysis models are generated and then run using the MCMC software of your choice:

 - [JAGS](http://sourceforge.net/projects/mcmc-jags) (using the `rjags` package)
 - [OpenBUGS](http://www.openbugs.info/) (using the `BRugs` package)
 - [WinBUGS](http://www.mrc-bsu.cam.ac.uk/bugs/winbugs/contents.shtml) (using the `R2WinBUGS` package)

You need to have one of these packages and the MCMC software installed to be able to use GeMTC.

The manual and changelog are available on CRAN and the source code on GitHub:

 - [gemtc on CRAN](http://cran.r-project.org/web/packages/gemtc/)
 - [getmc source on GitHub](https://github.com/gertvv/getmc/)

To install the getmc R package, use the following command in R:

```
install.packages('getmc')
```

GeMTC datasets (networks) can be generated from ordinary R dataframes.
Alternatively, the R package can read and write the GeMTC XML format used by [GeMTC GUI](/gemtc-gui "GeMTC GUI") for dichotomous or continuous data.
Consistency, node-splitting, and unrelated mean effects models are currently supported. Other inconsistency models may be added later on.

Networks, models, and results can be summarized and visualized using `summary` and `plot`.
Convergence diagnostics, summaries and density plots of the results are provided by the [coda package](http://cran.r-project.org/web/packages/coda/ "coda (CRAN)").
There are `relative.effect` and `rank.probability` functions to provide additional summaries of consistency models.

References
----------

 - {% reference network-auto %}
 - {% reference network-icdf %}
