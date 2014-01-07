---
layout: content 
title:  Our Research
---

This page outlines our general research agenda. See our [publications](/research/publications) and [software](/software) pages to get a grasp of our progress so far.

[List of MSc projects](/research/msc-projects): check here if you're interested in doing your master's thesis with us!

### Supporting health care policy decisions

At drugis.org, we develop methods and software to support evidence-based health care policy decision making that concerns alternative treatment options.
As we see it, such decisions require the following steps to be taken:

 1. Data acquisition: identification of the relevant evidence, e.g. through a systematic review of the scientific literature.

 2. Evidence synthesis: statistical modeling of the evidence to arrive at consistent estimates of treatment effects, e.g. meta-analysis.

 3. Decision analysis: incorporating the decision maker's (or patients') subjective preferences on the relative importance of different outcomes.

All three steps are challenging, and are typically performed by different domain experts using an ad-hoc series of disconnected software tools.
Although this is often a viable option, there are several problems with this approach.
First of all, because analyses are performed using a disconnected series of tools, the required information to accurately reproduce the analyses underlying a decision is often lacking.
Secondly, trade-off decisions are often made informally, meaning that the subjective preferences underlying the decision are not made explicit or quantified, leading to a lack of transparency on how the evidence informed the final decision.
Finally, the lack of integrated tools for the entire decision aiding process results in inefficiencies through duplication of effort and manual data entry and the transfer of results between tools.

### Example: ADDIS 1.x for drug regulation

Drug regulators assess the benefits and risks of a new drug based on the evidence provided by the company seeking market approval.
The benefits and risks of a drug should be assessed in comparison with the benefits and risks of drugs already on the market (it would not make sense to approve a drug that is worse than an existing drug).
Ideally, such decisions should take into account "all available evidence."

Current decision making in drug regulation relies entirely on the expert judgment of the assessors.
This often doesn't take into account all available evidence to systematically assess the benefit-risk profile.
Reliance on subjective assessment hides the reasoning supporting the decision and causes the regulatory process to be insufficiently transparent and traceable.
Furthermore, the trade-offs between benefits and risks are seldom made explicit, least quantified.

Within the context of TI Pharma's project Escher, we developed the ADDIS 1.x prototype decision support system that resolves these problems.
We believe the solution lies in combining the MCDA methods for quantitative benefit-risk assessment with a structured database of evidence from clinical research.
This will allow explicitly linking decisions back to their supporting evidence and will also make explicit the ranges of value judgments supporting the decisions made by the regulatory assessors.


### Research Interests

 * The current drug development and regulation process and the existing information systems and standards in this area.
We look at this both to identify opportunities to improve the existing process and to find systems and standards that we can reuse.

 * How to best combine methods for the synthesis of clinical evidence with methods for MCDA benefit-risk assessment to support regulatory decision making.

 * Analysis of the decision workflow supported by our software with the aim of identifying the minimal data model required for the assisted analysis of clinical trials data in a benefit-risk model.

 * How to retrieve as much information as possible about clinical studies from "legacy" information sources.
The information should be machine understandable in the sense that it can be used directly by our decision support software.
The retrieval should require as little user intervention as possible.

