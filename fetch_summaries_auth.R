

# functions -----------------------------------------------------------------------------------

## modified from https://gist.github.com/ritchieking
## Download file from private GitHub repo (any size)

library(tidyverse)
library(httr) 
library(rlist)
library(jsonlite)

# on MacOS environmental variable must be hard coded. Find with Sys.getenv("GITHUB_PAT")
source("local/credentials.R")
Sys.setenv(GITHUB_PAT = GITHUB_PAT)

fetchGHdata <- function(account, repo, path) {
  
  # Store a personal access token in .Renviron
  # See https://blog.exploratory.io/extract-data-from-private-github-repository-with-rest-api-db804fa43d84
  auth <- authenticate(Sys.getenv("GITHUB_PAT"), "")
  
  # auth <- authenticate(auth)
  
  # Seperate the filename from the directory
  match <- regexpr("^(.*[\\/])", path)
  if (match[1] > 0) {
    dir <- path %>% substring(match[1], attr(match, "match.length"))
    file <- path %>% substring(attr(match, "match.length") + 1, nchar(path))
  } else {
    dir <- ""
    file <- path
  }
  
  # To handle files larger than 1MB, use this trick:
  # https://medium.com/@caludio/how-to-download-large-files-from-github-4863a2dbba3b
  req_meta <- 
    httr::content(
      httr::GET(
        paste("https://api.github.com/repos", account, repo, "contents", dir, sep="/"), 
        auth
      )
    )
  
  entry <- req_meta %>% rlist::list.filter(name == file)
  sha <- entry[1][[1]]$sha
  
  # Stop with message if file not found.
  if(is.null(sha)){
    f <- paste(account, repo, path, sep="/")
    stop(paste(f, "not found."))
  }

  # Grab contents, using sha as a reference
  req_blob <- httr::GET(
    url = paste("https://api.github.com/repos", account, repo, "git/blobs", sha, sep="/"), 
    auth
  )
  
  # Need to decode the contents, which are returned in base64
  d <- httr::content(req_blob)$content %>%
    jsonlite::base64_dec() %>%
    rawToChar()
  
  return(d)
}

insert_tag <- function(html,tag,before="</body>") {
  gsub(before,paste0(tag,"\n",before),html)
}

fetch_and_fix <- function(url,destfile) {
  # tmp <- readLines(url)
  tmp <- tempfile("tmp", fileext = ".html")
  utils::download.file(url, destfile = tmp, cacheOK = FALSE)
  
  # insert resizer script
  script <- '<script type="text/javascript" src="js/iframeResizer.contentWindow.min.js"></script>'
  h <- readLines(tmp)
  out <- gsub("</body>",paste0(script,"\n</body>"),h)
  
  # insert resizer script
  writeLines(out,destfile)
  cat(paste("Done writing", destfile,"\n"))
}

# resizer script ------------------------------------------------------------------------------

resizer <- '<script type="text/javascript" src="js/iframeResizer.contentWindow.min.js"></script>'

# Maps ----------------------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-data-summary", "chinaMap.html") %>% insert_tag(resizer) %>% 
  writeLines("maps-china.html")

fetchGHdata("CEIDatUGA", "ncov-data-summary", "usMap.html") %>% insert_tag(resizer) %>% 
  writeLines("maps-us.html")

fetchGHdata("CEIDatUGA", "ncov-data-summary", "worldMap.html") %>% insert_tag(resizer) %>% 
  writeLines("maps-world.html")


# Nowcast -------------------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-nowcast", "nowcast-US.html") %>% insert_tag(resizer) %>% 
  writeLines("nowcast-US.html")

fetchGHdata("CEIDatUGA", "ncov-nowcast", "nowcast-US-cases.html") %>% insert_tag(resizer) %>% 
  writeLines("nowcast-US-cases.html")

fetchGHdata("CEIDatUGA", "ncov-nowcast", "under-reporting.html") %>% insert_tag(resizer) %>% 
  writeLines("nowcast-US-ascertainment.html")

fetchGHdata("CEIDatUGA", "ncov-nowcast", "china-nowcast-study.html") %>% insert_tag(resizer) %>% 
  writeLines("nowcast-validation.html")

fetchGHdata("CEIDatUGA", "ncov-nowcast", "USnowcast_plot.html") %>% insert_tag(resizer) %>% 
  writeLines("USnowcast_plot.html")

fetchGHdata("CEIDatUGA", "ncov-nowcast", "GAnowcast_plot.html") %>% insert_tag(resizer) %>% 
  writeLines("GAnowcast_plot.html")

# Context -------------------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-context", "web-summary.html") %>% insert_tag(resizer) %>% 
  writeLines("context-web-summary.html")

# Epidemic Characteristics --------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-parameters", "web-summary.html") %>% insert_tag(resizer) %>% 
  writeLines("parameters-web-summary.html")

fetchGHdata("CEIDatUGA", "ncov-parameters", "ncov-parameters.html") %>% insert_tag(resizer) %>% 
  writeLines("parameters-supplement.html")

fetchGHdata("CEIDatUGA", "ncov-parameters", "parameters-US.html") %>% insert_tag(resizer) %>% 
  writeLines("parameters-US.html")

# R_eff outside China -------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-Reff-outside-China", "web-summary.html") %>% insert_tag(resizer) %>% 
  writeLines("reff-outside-web-summary.html")

# Wuhan Stochastic Model ----------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-wuhan-stochastic-model", "web-summary.html") %>% insert_tag(resizer) %>% 
  writeLines("stochastic-web-summary.html")

fetchGHdata("CEIDatUGA", "ncov-wuhan-stochastic-model", "stochastic-model.html") %>% insert_tag(resizer) %>% 
  writeLines("stochastic-model.html")


# Stochastic Model for Georgia (pomp) ---------------------------------------------------------

fetchGHdata("CEIDatUGA", "COVID-GA-model", "web-summary.html") %>% insert_tag(resizer) %>%
  writeLines("stochastic-fitting-georgia-web-summary.html")

fetchGHdata("CEIDatUGA", "COVID-GA-model", "output/figures/covidtracker-figures/landing-page-fig.html") %>% insert_tag(resizer) %>%
  writeLines("stochastic-fitting-georgia-summaryplot.html")

fetchGHdata("CEIDatUGA", "COVID-GA-model", "docs/GA-model.html") %>% insert_tag(resizer) %>%
  writeLines("stochastic-fitting-georgia-suplement.html")

# ## Splinedev branch (temporary)
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/COVID-GA-model/splinedev/web-summary.html",
#   destfile="stochastic-fitting-georgia-web-summary.html"
# )
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/COVID-GA-model/splinedev/output/figures/covidtracker-figures/landing-page-fig.html",
#   destfile="stochastic-fitting-georgia-summaryplot.html"
# )

# Stochastic Model for All States (pomp) ---------------------------------------------------------

fetchGHdata("CEIDatUGA", "COVID-stochastic-fitting", "docs/overview.html") %>% insert_tag(resizer) %>%
  writeLines("forecast-overview.html")

fetchGHdata("CEIDatUGA", "COVID-stochastic-fitting", "docs/model-details.html") %>% insert_tag(resizer) %>%
  writeLines("forecast-model-details.html")

fetchGHdata("CEIDatUGA", "COVID-stochastic-fitting", "output/figures/topstates.html") %>% insert_tag(resizer) %>%
  writeLines("forecast-summaryplot.html")

fetchGHdata("CEIDatUGA", "COVID-stochastic-fitting", "output/figures/landing_page_fig.html") %>% insert_tag(resizer) %>%
  writeLines("forecast-landing_page_fig.html")

fetchGHdata("CEIDatUGA", "COVID-stochastic-fitting", "docs/states-model.html") %>% insert_tag(resizer) %>%
  writeLines("forecast-suplement.html")


# Normalcy ------------------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "covid-five-approaches", "web-summary.html") %>% insert_tag(resizer) %>%
  writeLines("suppression-without-distancing-web-summary.html")

# China Spatial Model -------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "CoronavirusSpatial", "web_summary.html") %>% insert_tag(resizer) %>% 
  writeLines("china-spatial-web-summary.html")

fetchGHdata("CEIDatUGA", "CoronavirusSpatial", "maps/link-weights-chloropleth-highest-ten-pct-2020-03-22.html") %>% 
  insert_tag(resizer) %>% 
  writeLines("china-spatial-link-weights.html")

# World Spatial Model -------------------------------------------------------------------------

# fetchGHdata("CEIDatUGA", repo = "", path = "") %>% insert_tag(resizer) %>% 
#   writeLines("world-spatial-link-weights.html")




# US Importation Risk -------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-importations-us", "us-importation-risk-web-summary.html") %>% 
  insert_tag(resizer) %>% 
  writeLines("us-importation-risk-web-summary.html")

# Final Size (Probability of Widespread Transmission) -----------------------------------------

fetchGHdata("CEIDatUGA", "ncov-coupled-outbreaks", "finalSizeSummary.html") %>% insert_tag(resizer) %>% 
  writeLines("final-size-web-summary.html")

fetchGHdata("CEIDatUGA", "ncov-coupled-outbreaks", "finalSize.html") %>% insert_tag(resizer) %>% 
  writeLines("final-size-supplement.html")

# Early Intervention --------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "ncov-early-intervention", "web-summary.html") %>% insert_tag(resizer) %>% 
  writeLines("early-intervention-web-summary.html")

fetchGHdata("CEIDatUGA", "ncov-early-intervention", "web-summary2.html") %>% insert_tag(resizer) %>% 
  writeLines("early-intervention-web-summary2.html")


# University Model -----------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "covid-university-reopening", "web_summary.html") %>% insert_tag(resizer) %>%
  writeLines("university-model-web-summary.html")
# Mass Testing --------------------------------------------------------------------------------

fetchGHdata("CEIDatUGA", "CoV_MassTesting", "COVID19_CEID_summary_html.html") %>% insert_tag(resizer) %>% 
  writeLines("mass_testing_summary.html")









# Lipp Lab Wastewater Surveillance

fetchGHdata("lipplab-uga", "covid_wastewater_lipplab_athens", "index.html") %>% insert_tag(resizer) %>%
  writeLines("wastewater-athens-web-summary.html")

fetchGHdata("lipplab-uga", "covid_wastewater_lipplab_athens", "plotly_fig.html") %>% insert_tag(resizer) %>%
  writeLines("wastewater-athens-plot.html")
