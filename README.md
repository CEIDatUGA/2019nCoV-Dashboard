# 2019nCoV-Dashboard
## (http://2019-coronavirus-tracker.com)

<!-- badges: start -->
<!-- badges: end -->

Public facing website for dissemination of analysis by the UGA CEID Coronavirus Working Group. This website provides analysis and tracking of the 2019 novel Coronavirus oubreak (COVID-19) which began in Wuhan, China, in 2019.

Website coding: Eric Marty <emarty@uga.edu>, Ben Taylor <bzt@uga.edu>

Contributors: Lewis Bartlett, Rebecca Borchering, John Drake, Yang Ge, Andreas Handel, Drew Kramer, Culzean Kennedy, Brian McKay, Eric Marty, Rachel Mercaldo, Paige Miller, Tierney O'Sullivan, Chloe Parker, Robbie Richards, Trippe Ross, Kate Sabey, Liliana Salvador, Cecilia Sanchez, JP Schmidt, Patrick Stephens, Chao Song, Daniel Suh, Benjamin Taylor, David Vasquez, Joy Vaz, Jessica Wenclawiak, Anna Willoughby

## Objective:  
A Single public facing web dashboard showing the results of CEID Coronavirus Working Group projects, including data and analyses.

## Rationale:  
The results of a diverse set of research projects undertaken by the CEID Coronavirus Working Group require a centralized, easily accessed place for dissemination to the public, other reasearchers and policymakers. 

## Strategy:  
The website is built in R using RMarkdown and some custom css and javascript. HTML reports from the various CEID Coronavirus Working Group projects are embedded. Each project has its own page on the website which present a summary of results, links to supplemental information, public repositories and preprints as these become available.  The website is built as an Rmarkdown website without Shiny for rapid deployment. Hosting is on GitHub Pages with a custom domain.

### References for site construction:

Authoring:  
<https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html>

Github Pages publishing:  
<https://resources.github.com/whitepapers/github-and-rstudio/>

## Source projects / website structure :

Pages on this website draw from the following projects:
    
### Data Summary
Graphical and statistical summaries of key data sources for CEID 2019-nCoV projects

<https://github.com/CEIDatUGA/ncov-data-summary>

### Context
Comparative risk: nCoV versus other outbreaks

<https://docs.google.com/spreadsheets/d/18rhrw1d9uDtm8ffLaFmFXjcY8zFCcYqesEoso2EICE0/edit#gid=1601846768>

### Epidemic Characteristics
Numerical estimates of epidemic characteristics parameters for modeling and understanding COVID-19 

<https://github.com/DrakeLab/ceid-ncov-recoveryrates>

### Stochastic Model
A stochastic model for the transmission of a novel coronavirus in Wuhan

<https://github.com/jdrakephd/wuhan-stochastic-model/>

### Nowcast
Nowcasting the 2019 Wuhan novel coronavirus outbreak

<https://github.com/CEIDatUGA/ncov-nowcast>

### Spatial Risk model (Gravity Model) for China

<https://github.com/CEIDatUGA/CoronavirusSpatial>

### Spatial Risk model (Gravity Model) for US/World

<https://github.com/CEIDatUGA/CoronavirusSpatial>

### Import risk model (US, possibly global)
Uses airport data, flight volume data from CDC and other sources, with inputs from Nowcast, Gravity model, and other data.

<https://github.com/CEIDatUGA/ncov-global-risk>

