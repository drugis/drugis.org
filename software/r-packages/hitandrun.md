---
layout: content
title: Hit-and-Run R package
---

<img src="/images/r-packages/hitandrun.png" style="float:right">

The `hitandrun` package for R provides an implementation of the "Hit-and-Run" method for sampling uniformly from convex shapes defined by linear inequality constraints.
For example, this enables us to sample weights in multiple criteria decision analysis (MCDA) with imprecise and/or incomplete preference information.
As such, it is complementary to the [SMAA](/software/r-packages/smaa) package.

The manual and changelog are available on CRAN and the source code on GitHub:

 - [hitandrun on CRAN](http://cran.r-project.org/web/packages/hitandrun/)
 - [hitandrun source on GitHub](https://github.com/gertvv/hitandrun/)

To install the hitandrun R package, use the following command in R:

```
install.packages('hitandrun')
```

References
----------

 - {% reference hitandrun %}
