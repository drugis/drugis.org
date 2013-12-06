---
layout: content
title: GeMTC R package
---

-   [GeMTC R package on CRAN](http://cran.r-project.org/web/packages/gemtc/)
-   [GeMTC R source on GitHub](https://github.com/gertvv/gemtc/)

The GeMTC R package enables Bayesian network meta-analysis (also known
as MTC, Mixed Treatment Comparisons) in R. Network meta-analysis models
can be generated and then run using MCMC software:
[JAGS](http://sourceforge.net/projects/mcmc-jags) (using the `rjags`
package), [OpenBUGS](http://www.openbugs.info/) (using the `BRugs`
package), or
[WinBUGS](http://www.mrc-bsu.cam.ac.uk/bugs/winbugs/contents.shtml)
(using the `R2WinBUGS` package). The [GeMTC GUI](/gemtc-gui "GeMTC GUI")
can be used instead of or in conjunction with the R package.

GeMTC is written and maintained by Gert van Valkenhoef and Joël Kuiper.

#### Citing GeMTC

If you use GeMTC in your work and you would to cite us, please cite the
following reference: [@network-auto].

### Features

The R package can read and write the GeMTC XML format used by [GeMTC
GUI](/gemtc-gui "GeMTC GUI") using the functions `read.mtc.network` and
`write.mtc.network`. Alternatively, GeMTC datasets can be created from R
data frames using `mtc.network`. Models are generated using the
`mtc.model` function and estimated using `mtc.run`.

Consistency, node-splitting, and unrelated mean effects models are currently supported. Other inconsistency models may be added later on.

Data sets and models can be summarized and visualized using `summary`
and `plot`. Convergence diagnostics, summaries and density plots of the
results are provided by the [coda
package](http://cran.r-project.org/web/packages/coda/ "coda (CRAN)").
There are `relative.effect` and `rank.probability` functions to provide
additional summaries of consistency models. Relative effects can also be
plotted using `forest` (from
[meta](http://cran.r-project.org/web/packages/meta/ "meta (CRAN)")).

Further information is available from the in-package documentation or
the [reference manual
(CRAN)](http://cran.r-project.org/web/packages/gemtc/gemtc.pdf "GeMTC reference manual (CRAN)").

### Installing the R package

To install the GeMTC R package, use the following command in R:

    install.packages('gemtc')

You need to have JAGS or BUGS installed for model estimation, as well as
a compatible R package: `rjags`, `BRugs`, or `R2WinBUGS`.

The following loads the R package and displays the main documentation
page:

    library(gemtc)
    ?gemtc

### Version history

See the
[NEWS](http://cran.r-project.org/web/packages/gemtc/NEWS "CRAN :: GeMTC NEWS")
file on CRAN.
