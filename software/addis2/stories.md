---
layout: content
title: ADDIS 2 user stories
---

<div id="toc"></div>

This document tracks user stories for the ADDIS 2 project and collects them into themes.

Development of ADDIS 2 is an iterative process.
Within this iterative process, we distinguish two layers of iteration:

 - The release: lasts a quarter year. Aims for a complete set of functionality, delivered to end users.
 - The iteration: lasts two weeks. User stories are selected for implementation at the start of the iteration. They are selected based on customer priorities and developer estimates of implementation complexity.

User stories describe coherent and self-contained pieces of user-visible functionality. 
Within this definition, we aim for user stories to be as small as possible in terms of implementation complexity, so that we can plan for multiple stories to be implemented each (two-week) iteration.
Moreover, user stories should ideally be as independent of eachother as is reasonable, so that they can be implemented in any order based on prioritization.
User stories should have a clear description of their functional requirements and where appropriate should also define their user interface and application programming interface (API) requirements, as well as the assumptions that were made when writing the user story.
Finally, when user stories are considered for implementation in the next release, the developers estimate their complexity in abstract units called "story points".
Over the course of development, the team learns about their "velocity": the number of story points that can be implemented per iteration.
This allows a forecast of the number of story points that can be implemented in a release, and thus formulating a (tentative) release roadmap.

Themes are a higher level description of a set of related functionalities that together allow users to complete a specific task or collection of related tasks to their satisfaction. 
Although a theme may start out as just a description, it will need to be broken down into specific user stories before it can be implemented.
This should be done before the theme enters the planning horizon (i.e. when we expect to start working on the theme in the current or next release).
On the other hand specifying the stories too early may require significant rework down the road as the system and the user expectations start to take shape.
The partitioning into user stories can often be done in multiple ways, and it may turn out that a non-obvious way of doing so can significantly reduce implementation complexity.
Therefore, defining the user stories is an iterative process between developers and the other stakeholders.

This document is formatted in plain text using the [Markdown](http://daringfireball.net/projects/markdown/syntax) syntax.
This allows us to automatically publish this document on our website and track versions on GitHub.
Please follow these guidelines when contributing to themes and stories:

- One sentence per line (no more, no less). This allows us to view changes on a sentence-by-sentence basis.
- Separate paragraphs by a (single) empty line.
- Number themes and stories in order of creation.
  If you are unsure what the number should be, leaving it out is better than guessing.
- Preview your changes in the rendered HTML before committing them.

Theme template:

    ## Theme X: short title

    Source: source of requirement

    Purpose:

    Short description of 

    Assumptions:

    - Bulleted list of assumptions.

    References:

    - Bulleted list of references to further information.

Story template:

    ### Story Y: short title

    Source: source of requirement

    Tagline: As a ___, I want to ___ so that ___.

    Implementation checklist:

    - Bulleted list of specific functional requirements

    User interface:

    - Bulleted list of user interface expectations and/or links to mock-ups.

    API requirements:

    - Bulleted list of API requirements.

    References: 

    - Bulleted list of references to further information

    Complexity estimate: [TO BE FILLED BY DEVELOPERS]

    Status:

    - Bulleted list of dated (YYYY-MM-DD) status updates


## Theme 1: analysis projects

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose:

Typically, any project (systematic review, decision analysis, etc.) will include several analyses, for example to capture a set of related analyses under a single umbrella.
To frame the analyses that he/she is planning to do, a user must define the "universe of discourse" - this includes the clinical trials under consideration and the relevant outcomes and interventions being studied.
This relates directly to PICO: population (accounted for in trial selection), interventions / control, outcomes.

Assumptions:

 - The set of trials that are relevant for the analysis has already been constructed (i.e. the systematic review step has been done).
    * This assumption can be met because we have prototyped the "TrialVerse" database and an importer for ADDIS 1 files.
      We will fill the database with several imports of ADDIS 1 files and allow the user to choose between them.
      This can work as a stop-gap until data entry in ADDIS 2 is possible.
 - Harmonized entities (outcomes, drugs, etc.) are already available for the set of trials under consideration.
   Simply choosing from this set of harmonized entities is useful (though not necessarily "complete").
    * Our prototype implementation of ConceptMapper has resulted in a data model for TrialVerse that allows us to ignore the harmonization issue initially, yet be confident that we can address it later on.

References:

 - [The ADDIS 2 prototype](https://github.com/drugis/addis2/)

 - [The TrialVerse and ConceptMapper prototypes](https://github.com/drugis/trialverse/)

### Story 1: basic user login / account management

Source: UMCG

Tagline: As a user, I want to be able to securely log in to my personal account so that (1) my work is properly attributed to me and (2) others are prevented from modifying my work without permission. Ideally, I do not want to create a new set of credentials to remember, I would rather log in using an account I already have.

Implementation checklist:

 - The application should only be available to logged in users
 - Users that are not logged in should be redirected to the log in screen
 - The log in screen provides some basic information about the application and how user credentials are stored
 - Logging in is done via a third party (OAuth provider)
    * Note: initially this will be Google, to be replaced by ORCID as their authentication API becomes available
 - Users are able to log out
 - Users are routed to HTTPS to ensure their requests are secure / confidential
 - Username / password authentication is available 

User interface:

 - Can be taken from https://mcda.drugis.org/

API requirements: none.

References: 

 - https://github.com/drugis/mcda-elicitation-web/ - our MCDA web application can serve as an example implementation.

Complexity estimate: 2 points

Status:

 - 2014-01-22 preliminarily planned for 2014Q1
 - 2014-01-30 planned 2014Q1 iteration 1
 - 2014-02-18 completed 2014Q1 iteration 1

### Story 2: projects overview screen

Source: UMCG

Tagline: As a user, I want a comprehensive overview of my other projects so that I can find and interact with them. In addition, I would like to be aware of other potentially interesting projects.

Implementation checklist:

 - Show all the projects owned by the logged-in user (name / link, description)
 - Show the projects owned by others, up to a certain maximum (name / link, owner, description)

User interface:

 - Two simple lists separated by headings will suffice initially. It is assumed that we will come back to this when the system becomes more fully functional.

API requirements:

 - Projects are a REST resource at {CORE_API}/projects/{id}
   - supports unrestricted query
   - supports query by owner (how?)

References: none.

Complexity estimate: 5 points

Status:

 - 2014-01-22 preliminarily planned for 2014Q1
 - 2014-01-30 planned 2014Q1 iteration 1
 - 2014-02-18 completed 2014Q1 iteration 1

### Story 3: create project

Source: UMCG

Tagline: As a user, I want to create a new project, so that I have a place to conduct a series of related analyses on a single dataset.

Implementation checklist:

 - The user can create a new project from the projects overview
 - The user can specify a name (short) and description (longer) for the project
 - The user (implicitly) becomes the owner of the new project
 - The user can associate one of the available datasets (TrialVerse namespaces) with the project
 - The user can either save the project, or cancel the creation process

User interface:

 - A big, visible button on the projects overview triggers an overlay where the required information can be entered in a simple form.

API requirements:

 - Projects are a REST resource at {CORE_API}/projects/{id}
    - supports create
 - TrialVerse namespaces are a REST resource at {TRIALVERSE_API}/namespaces/{id}
    - supports query

References: none.

Complexity estimate: 3 points

Status:

 - 2014-01-22 preliminarily planned for 2014Q1
 - 2014-01-30 planned 2014Q1 iteration 1
 - 2014-02-18 completed 2014Q1 iteration 1

### Story 4: view project

Source: UMCG

Tagline: As a user, I want an overview of my project so that I have a place where I can view and create outcomes, interventions, and analyses.

Implementation checklist:

 - From the project overview allow selection of a specific project to view
 - On the view, show the following elements:
    - project name and description
    - trialverse namespace (name/description + url)
    - defined outcomes + option to create more
    - defined interventions + option to create more
    - existing analyses + option to create more (plus choose which type)
 - Users can also view others' projects, where any edit functionality is hidden

User interface:

 - https://trello-attachments.s3.amazonaws.com/5270ca8844d20c90510038c0/52dce97f651c136f5bfe862e/1686aeea76dc82213e8daf82a829c830/IMG_20140218_145644.jpg.jpeg

API requirements:
 
 - Projects are a REST resource at {CORE_API}/projects/{id}
    - supports get

References: none.

Complexity estimate: 2 points

Status:

 - 2014-01-22 preliminarily planned for 2014Q1
 - 2014-02-18 planned 2014Q1 iteration 2

### Story 5: add outcomes

Source: UMCG

Tagline: As a user, I want to add outcome definitions to my project so that these can be used in analyses.

Implementation checklist:

 - Users can create outcomes with a name and description/motivation
 - Users can select a variable from the trialverse namespace to map the outcome to

User interface:

 - https://trello-attachments.s3.amazonaws.com/5270ca8844d20c90510038c0/52dcec168d3d8b0d2c7bb48c/a6d62e17cd3daebeb11cf4c3dc0f70b6/trello-152413068.jpg

API requirements:

 - Outcomes are a REST resource at {CORE_API}/projects/{id}/outcomes
    - supports query, create, get
 - Variable definitions are a REST resource {TRIALVERSE_API}/namespaces/{ns_id}/variables
    - supports query, get

References: none.

Complexity estimate: 2 points

Status:

 - 2014-01-22 preliminarily planned for 2014Q1
 - 2014-02-18 planned for 2014Q1 iteration 2

### Story 6: add interventions

Source: UMCG

Tagline: As a user, I want to add intervention definitions to my project so that these can be used in analyses.

Implementation checklist:

 - Users can create interventions with a name and description/motivation
 - Users can select a drug from the trialverse namespace to map the intervention to

User interface:

 - See [Story 6](#Story-6)

API requirements:

 - Interventions are a REST resource at {CORE_API}/projects/{id}/interventions
    - supports query, create, get
 - Drug definitions are a REST resource {TRIALVERSE_API}/namespaces/{id}/drugs
    - supports query, get
 
References: none.

Complexity estimate: 2 points

Status:

 - 2014-01-22 preliminarily planned for 2014Q1
 - 2014-02-18 planned for 2014Q1 iteration 2

### Story 7: modify project information

Source: UMCG

Tagline:

Implementation checklist:

User interface:

 - https://trello-attachments.s3.amazonaws.com/5270ca8844d20c90510038c0/52dceb2abdf740875b9f5a2f/24925e4cbcd94c8537640e9d9bfcbfa7/trello887037007.jpg

API requirements:

 - Projects are a REST resource at {CORE_API}/projects/{id}
    - supports update

References: none.

Complexity estimate: 1/2 points

Status:

 - 2014-02-22 preliminarily planned for 2014Q1
 - 2014-02-18 planned for 2014Q1 iteration 2

## Theme 2: Single study benefit-risk analysis (SSBR)

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose:

Policy makers may want to assess the implications of a single large trial for the benefit-risk balance of a number of alternative interventions. Using a single study minimizes the number of intervening analyses that need to be done, as the performance distributions for each of the interventions (alternatives) and outcomes (criteria) can be estimated directly from the trial's results.

Assumptions:

 - Outcomes and interventions have been defined by the user

 - The trial data is available from TrialVerse, and can be mapped to the defined outcomes and interventions

 - The actual MCDA functionality is available as a separate component (web-based UI and computational backend)

    * This is already up & running at https://mcda.drugis.org/

References:

 - The implementation of single-study benefit-risk analyses in ADDIS 1.x, and especially the JSON export

 - van Valkenhoef, G., Tervonen, T., Zwinkels, T., de Brock, B., & Hillege, H. (2013). ADDIS: a decision support system for evidence-based medicine. Decision Support Systems, 55, 459–475.

 - Tervonen, T., van Valkenhoef, G., Buskens, E., Hillege, H. L., & Postmus, D. (2011). A stochastic multicriteria model for evidence-based decision making in drug benefit-risk analysis. Statistics in Medicine, 30(12), 1419–1428.

 - https://mcda.drugis.org/

### Story 8: create SSBR analysis

Source: UMCG

Tagline: As a decision maker, I want to create a single study benefit-risk analysis so that I can perform an MCDA analysis based on a single study.

Implementation checklist:

- There is a button to create a single-study benefit-risk analysis, which triggers a dialog where the user can specify a name and description for the analysis.
- After creation the user is redirected to an analysis view.

User interface:

- https://trello-attachments.s3.amazonaws.com/5270ca8844d20c90510038c0/52dcf612448d3551587ed2eb/b1fd127795f0bcbb228d587dcd1916e1/IMG_20140218_145707.jpg

API requirements:

- Analyses are a REST resource at {CORE_API}/projects/{id}/analyses
  - supports query, create, get

References: none.

Complexity estimate: 2 points

Status:

- 2014-01-22 preliminarily planned for 2014Q1
- 2014-02-18 planned for 2014Q1 iteration 2

### Story 9: select criteria

Source: UMCG

Tagline: As a decision maker, I want to select the criteria of interest so that I can perform an MCDA analysis.

Implementation checklist:

- A list of included criteria is presented on the analysis view
- The user can add criteria, from the list of project outcomes (IFF owner of the project)
- The user can remove criteria (IFF owner of the project)
- The user is alerted if fewer than two criteria have been selected

User interface:

- http://ivaynberg.github.io/select2/ multiselect

API requirements:

- Bulleted list of API requirements.

References: none.

Complexity estimate: 1 point

Status:

- 2014-01-22 preliminarily planned for 2014Q1
- 2014-02-18 planned for 2014Q1 iteration 2

### Story 10: select alternatives

Source: UMCG

Tagline: As a decision maker, I want to select the alternatives of interest so that I can perform an MCDA analysis.

Implementation checklist:

- A list of included alternatives is presented on the analysis view
- The user can add alternatives, from the list of project interventions (IFF owner of the project)
- The user can remove alternatives (IFF owner of the project)
- The user is alerted if fewer than two alternatives have been selected

User interface:

- http://ivaynberg.github.io/select2/ multiselect

API requirements:

- Bulleted list of API requirements.

References: none.

Complexity estimate: 1/2 points

Status:

- 2014-01-22 preliminarily planned for 2014Q1
- 2014-02-18 planned for 2014Q1 iteration 2

### Story 11: select study

Source: UMCG

Tagline: As a decision maker, I want to select a study so that I can perform an MCDA analysis based on that study's data.

Implementation checklist:

- The user can select a study (IFF owner of the project)
- The user is alerted if they choose study that does not contain selected criteria/alternatives
- The user is made aware of incompatible studies through an icon in the selection list

User interface:

- Simple selection like typeahead input

API requirements:

- Bulleted list of API requirements.

References: 

- Bulleted list of references to further information

Complexity estimate: 1 point

Status:

- 2014-01-22 preliminarily planned for 2014Q1
- 2014-02-18 planned for 2014Q1 iteration 2

### Story 12: create MCDA problem

Source: UMCG

Tagline: As a decision maker, I want to translate my selected criteria, alternatives, and selected study to an MCDA problem definition so that  I can perform an MCDA analysis.

Implementation checklist:

- The user can download the MCDA problem
  - automatically match arms to interventions (main epoch defined as the epoch attached to the primary measurement moment)
  - automatically match study outcomes to BR-criteria
  - retrieve measurements (NB select primary measurement moment from study (specified in trialverse))
  - generate and store mcda-web compatible JSON (beta-distributed dichotomous outcomes; normal-distributed continuous outcomes)

User interface:

- A link

API requirements:

- The MCDA problem is a REST resource at {CORE_API}/projects/{id}/analyses/{id}/problem

References: 

- JSON MCDA problem export in ADDIS 1

Complexity estimate: 5

Status:

- 2014-01-22 preliminarily planned for 2014Q1

### Story 13: perform MCDA analysis

Source: UMCG

Tagline: As a decision maker, I want to provide my preferences and receive decision metrics so that I can perform an MCDA analysis.

Implementation checklist:

- The user is directed to an mcda-web interface where the MCDA problem is loaded
- The user is able to save/load preference scenarios in the mcda-web interface
- The user is unable to make further changes to the problem definition after the MCDA analysis has been started

User interface:

- Bulleted list of user interface expectations and/or links to mock-ups.

API requirements:

- The MCDA problem is a REST resource at {CORE_API}/projects/{id}/analyses/{id}/problem
- Preference scenarios are a REST resource at {CORE_API}/projects/{id}/analyses/{id}/scenarios
   - supports query, get, create, update

References: none.

Complexity estimate: 2 points

Status:

- 2014-01-22 preliminarily planned for 2014Q1

### Story 14: arm disambiguation

Source: UMCG

Tagline: As a decision maker, I want to select the specific arms to be included in the analysis so that the most appropriate arm is used.

Implementation checklist:

- Allow user to override intervention to arm matching when this matching is ambiguous

User interface:

- Radio buttons or a dropdown

API requirements:

- Arm selections must be settable somewhere in {CORE_API}/projects/{id}/analyses/{id}

References: 

- Arm disambiguation in ADDIS 1.x meta-analysis wizards

Complexity estimate: 1 point

Status:

- 2014-01-22 preliminarily planned for 2014Q1

### Story 15: copy locked analysis

Source: UMCG

Tagline: As a decision maker, I want to copy my locked analysis so that I can make further changes to the problem definition.

Implementation checklist:

- The user can click a "copy" or "clone" button to create a new analysis pre-populated with the same criteria, alternative, and study selections as the current one

User interface:

- A button and a confirmation step with clarification of what will happen

API requirements:

- Bulleted list of API requirements.

References: none.

Complexity estimate: 1 point

Status:

- 2014-01-22 preliminarily planned for 2014Q1

## Theme 3: Network meta-analysis

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose:

Decisions regarding alternative treatment options should ideally take into account all available evidence. Meta-analysis and especially network meta-analysis is an important tool to achieve this. It enables the simultaneous comparison of any number of interventions studies in any number of clinical trials. Automated network meta-analysis is widely seen as a key feature of ADDIS 1.x.

Assumptions:

 - Outcomes and interventions have been defined by the user

 - The trial data is available from TrialVerse, and can be mapped to the defined outcomes and interventions

 - The actual NMA functionality is available as a separate component (web-based UI and computational backend)

    * See the "GeMTC web interface" story

References:

 - The network meta-analysis implementation in ADDIS 1.x

 - van Valkenhoef, G., Tervonen, T., Zwinkels, T., de Brock, B., & Hillege, H. (2013). ADDIS: a decision support system for evidence-based medicine. Decision Support Systems, 55, 459–475.

## Theme 4: GeMTC web interface

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose:

Network meta-analysis is an important statistical method that is increasingly being used for evidence synthesis in systematic reviews. A user-friendly interface for network meta-analysis is therefore valuable independent of the ADDIS project proper, so it makes sense to provide it as an independent component.

Assumptions:

 - The computational functionality has been implemented in R, in such a way that it can be exposed as a Patavi web service. The data format is sufficiently well-defined that a JSON model can be specified.

References:

 - The GeMTC R package: http://drugis.org/software/r-packages/gemtc

 - van Valkenhoef, G., Tervonen, T., de Brock, B., & Hillege, H. (2012). Algorithmic Parameterization of Mixed Treatment Comparisons. Statistics and Computing, 22(5), 1099–1111.

## Theme 5: meta-analysis based benefit-risk analysis (MABR)

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose:

Policy makers want to assess the benefit-risk balance of a number of alternative interventions, for example to decide whether or not a new medicine should be allowed on the market, or to provide recommendations on the first-line therapy for a specific condition. Such decisions should take into account all available evidence, which typically requires a network meta-analysis. Thus network meta-analysis should inform the MCDA model.

Assumptions:

 - Outcomes and interventions have been defined by the user

 - The results of network meta-analyses assessing the effect of the relevant interventions on each of the relevant outcomes are available

 - The actual MCDA functionality is available as a separate component (web-based UI and computational backend)

    * This is already up & running at https://mcda.drugis.org/

References:

 - The implementation of meta-analysis based benefit-risk analyses in ADDIS 1.x, and especially the JSON export

 - van Valkenhoef, G., Tervonen, T., Zwinkels, T., de Brock, B., & Hillege, H. (2013). ADDIS: a decision support system for evidence-based medicine. Decision Support Systems, 55, 459–475.

 - van Valkenhoef, G., Tervonen, T., Zhao, J., de Brock, B., Hillege, H., & Postmus, D. (2012). Multi-criteria benefit-risk assessment using network meta-analysis. Journal of Clinical Epidemiology, 65(4), 394–403.

 - https://mcda.drugis.org/

## Theme 6: patient-level disease progression modeling

Source: GetReal DoW D4.4

Purpose:

To predict RE and absolute benefits and harms in patients and populations that differ in terms of risk factors and co-morbidities, adherence or uptake of therapy. This may include the simulation of rare or less common diseases, drug with companion diagnostic, tumours with genetic marker, and primary antineoplastic targeted agents.

The model will be driven by transition times from one state to the next, which are described by transition-specific hazard functions. An individual-level simulation model based on discrete health states is envisaged, but different model structures or designs that may be appropriate for specific case study disease areas will be tested. For each state hazard functions and its parameters are specified and transition times simulated from a piecewise constant approximation of the hazard function. Transitions between states depend on baseline characteristics and on the history of previous events. 

It should be possible to take certain parameters from the results of network meta-analyses.

Assumptions:

 - A generic framework / simulation model has been developed by UoB (T4.4.2) and is sufficiently general that it can be implemented in ADDIS.

 - A reference implementation in R is delivered by UoB (T4.4.3) and has been tested for suitability in case studies (T4.4.4). Thus the primary task is to develop a user interface around that existing functionality.

 - Suitable network meta-analysis models have been implemented, which result in estimates compatible with the disease state models. This should be known ahead of time (T4.4.1). Also see [Theme 7](#Theme-7).

References: TODO.

## Theme 7: network meta-analysis with competing risk survival

Source: GetReal DoW D4.4

Purpose:

Simulations are likely to be driven by risk equations that represent disease progression and how this is altered by different therapies. The model will be driven by transition times from one state to the next, which are described by transition-specific hazard functions. Such transitions are mutually exclusive outcomes, which corresponds to competing risks between multiple outcomes in the clinical trials. Thus, the parameters of these models will be informed by network meta-analyses of competing risk outcomes.

Assumptions:

 - Competing risks meta-analysis is indeed deemed necessary (T4.4.1) for the proper parameterization of the disease progression models ([Theme 6](#Theme-6)).

 - A reference implementation in R is delivered by UoB (T4.4.3) and has been tested for suitability in case studies (T4.4.4). Thus the primary task is to develop a user interface around that existing functionality.

References:

 - NICE DSU TSD series on ES, part 2

## Theme 8: View clinical trial details

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose: TODO.

Assumptions: TODO.

References: TODO.

## Theme 9: Enter new clinical trial

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose: TODO.

Assumptions: TODO.

References: TODO.

## Theme 10: Import clinical trial data from ClinicalTrials.gov

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose: TODO.

Assumptions: TODO.

References: TODO.

## Theme 11: Edit clinical trial data

Source: UMCG / re-implementation of ADDIS 1.x features

Purpose: TODO.

Assumptions: TODO.

References: TODO.

## Theme 12: Basic post-hoc harmonization of concepts

Source: GetReal DoW D4.13

Purpose:

Often data on different trials will be entered by various parties for varying reasons. Therefore, it may not a priori be obvious that they measure the same or similar concepts, and it may be necessary to "harmonize" the concepts before the trials can be jointly analyzed. To this end, users should be able to indicate when two outcomes or interventions are instances of the same higher-level concept. This should support existing terminologies such as SNOMED-CT, ICD-10, and ATC.

Assumptions: TODO.

References: TODO.

## Theme 13: Text-based searching of clinical trials

Source: GetReal DoW D4.14

## Theme 14: Concept-based searching of clinical trials

Source: GetReal DoW D4.14; UMCG / re-implementation of ADDIS 1.x features

## Theme 15: Compose collection of clinical trials

Source: UMCG / re-implementation of ADDIS 1.x features

## Theme 16: Advanced post-hoc harmonization of concepts

Source: GetReal DoW D4.14

Purpose: TODO.

Assumptions: TODO.

References: TODO.

## Theme 17: Mark duplicates of clinical trials

<script type="text/javascript">
(function() {
    var container = document.getElementById('toc').parentNode;
    function filter(el) {
        return (el.tagName === "H2" || el.tagName === "H3") &&
            (/^Theme \d*:/.test(el.textContent) || /^Story \d*:/.test(el.textContent));
    }
    var els = Array.prototype.slice.call(container.childNodes).filter(filter);
    var themeTarget = document.getElementById('toc').appendChild(document.createElement('ul'));
    var target = themeTarget;
    for (var i = 0; i < els.length; ++i) {
        var title = els[i].textContent;
        var category = els[i].textContent.replace(/^(Theme|Story)/, '$1');
        var id = els[i].textContent.replace(/^(Theme|Story) (\d*):/, '$2');
        
        var anchor = document.createElement('a');
        anchor.name = category + "-" + id;
        els[i].appendChild(anchor);
        
        if (i > 0 && els[i].tagName === "H3" && els[i-1].tagName === "H2") {
            target = themeTarget.lastChild.appendChild(document.createElement('ul'));
        } else if (els[i].tagName === "H2") {
            target = themeTarget;
        }
        
        var node = document.createElement('li');
        node.innerHTML = '<a href="#' + category + "-" + id + '">' + title + '</a>';
        target.appendChild(node);
    }
})();
</script>
