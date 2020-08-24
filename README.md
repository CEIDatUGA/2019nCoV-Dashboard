# 2019nCoV-Dashboard (COVID-19 Portal)
## (https://covid19.uga.edu)

<!-- badges: start -->
<!-- badges: end -->

Public facing website for dissemination of analysis by the UGA CEID Coronavirus Working Group and partners. This website provides analysis and tracking of the outbreak of COVID-19 which began in Wuhan, China, in 2019.

Website coding: Eric Marty <emarty@uga.edu>, Ben Taylor <bzt@uga.edu>

Contributors: <https://www.covid19.uga.edu/about#contributors>

## Strategy:  
The website is built in R using RMarkdown and some custom css and javascript. HTML reports from the various CEID Coronavirus Working Group projects are imported from project repositories and rendered here. Each project has its own page on the website which present a summary of results, links to supplemental information, public repositories and preprints as these become available. The website is built as an Rmarkdown website without Shiny for rapid deployment. Hosting is on GitHub Pages with a custom domain. Projects involving Shiny aare hosted on separate Shiny servers and embedded here using iframes.

