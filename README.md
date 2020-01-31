
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 2019nCoV-Dashboard

<!-- badges: start -->

<!-- badges: end -->

Public facing website for CEID’s 2019 Novel Coronavirus rapid response.

Objective:  
A Single public facing web dashboard showing the results of all CEID
2019 nCoV projects

Rationale:  
Results need to be presented in one centralized place, with internal
details insulated from view. Pulling pre-rendered HTML of static image
outputs from the various projects into a purpose-built repository allows
this.

Strategy:  
Website will be built in R using RMarkdown, without shiny. HTML outputs
from the various research projects will be embedded. Each project will
have its own tab, and will display figures, a link to any public
repositories, and link to any preprints. Built in Rmarkdown without
Shiny for rapid deployment. Hosting will be on GitHub Pages initially.

## Source projects / website structure :

Each project will have its own tab, with figures, link to repository and
link to preprint(s).

### Nowcast

Nowcasting the 2019 Wuhan novel coronavirus outbreak

<https://github.com/CEIDatUGA/ncov-nowcast>

### Spatial Risk model (Gravity Model) for China

<https://github.com/CEIDatUGA/CoronavirusSpatial>

### Import risk model (US, possibly global)

To be created with airport data, flight volume data from CDC and other
sources, with inputs from Nowcast, Gravity model, and other data.

<https://github.com/CEIDatUGA/ncov-global-risk>

### Statistical Model (Epi Model)

A stochastic model for the transmission of a novel coronavirus in Wuhan

<https://github.com/jdrakephd/wuhan-stochastic-model/>

### Parameters

Estimates of rates, etc.

<https://github.com/DrakeLab/ceid-ncov-recoveryrates>
