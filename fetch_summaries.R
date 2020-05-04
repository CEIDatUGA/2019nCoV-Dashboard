# function to fetch summaries and insert code

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

# fetch summaries

# Early Intervention - web summary
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary.html?token=ADVPF4A25RM4U55PS5IBXI26XE7P2",
  destfile="early-intervention-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary2.html?token=ADVPF4BHGKZ7EXHTLZLXTVK6XE7SM",
  destfile="early-intervention-web-summary2.html"
)

# Maps 

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/chinaMap.html?token=ADVPF4HLV74KXA2DGKFPHFC6WE7BU",
  destfile="maps-china.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/usMap.html?token=ADVPF4CGHKV5MXKZLQB2HR26WE7MG",
  destfile="maps-us.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/worldMap.html?token=ADVPF4CWFMG3VRLJGEAMYUK6WE7NU",
  destfile="maps-world.html"
)


# # Data Summary - Epidemic Curves
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/epidemic-curves-web-summary.html?token=ADVPF4BZONUPWNP7VHY7GU26RXLFA",
#   destfile="epidemic-curves-web-summary.html"
# )

# # Speed of Spread - Epidemic Curves by Country
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/epi-curve-by-country-web-summary.html?token=ADVPF4AMOTBYKPAR24Z7GUK6RXKKC",
#   destfile="epi-curve-by-country-web-summary.html"
# )

# # Speed of Spread - Epidemic Curves by US State
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/epi-curve-by-us-state-web-summary.html?token=ADVPF4HYGKGEGNEVNCMCNUK6RXKMI",
#   destfile="epi-curve-by-us-state-web-summary.html"
# )



# Context
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-context/master/web-summary.html?token=ADVPF4FUQVFSA7DF6TS6CAC6WVM3Q",
  destfile="context-web-summary.html"
)

# Epidemic Characteristics
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/web-summary.html?token=ADVPF4HAGCY3BC5CLAYIPRC6WAIEK",
  destfile="parameters-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/ncov-parameters.html?token=ADVPF4FHD4QTZ3XRJWGVAU26WAIHA",
  destfile="parameters-supplement.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/parameters-US.html?token=ADVPF4E462F3LKUUQN2GB7S6WAII2",
  destfile="parameters-US.html"
)

# R_eff outside China

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-Reff-outside-China/master/web-summary.html",
  destfile="reff-outside-web-summary.html"
)

# Stochastic Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/web-summary.html?token=ADVPF4A5SQTXX7T5MMEZ6M26WLCQM",
  destfile="stochastic-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model.html?token=ADVPF4HSE2GNDSX2U2TSHVS6WLCS6",
  destfile="stochastic-model.html"
)

# Stochastic Model for Georgia (old version)

## old version
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model-georgia-web-summary.html?token=ADVPF4GXZBHYLKCHRDN4BQS6VF3MQ",
#   destfile="stochastic-georgia-web-summary.html"
# )

# Stochastic Model for Georgia (pomp)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/COVID-GA-model/master/web-summary.html",
  destfile="stochastic-fitting-georgia-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/COVID-GA-model/master/output/figures/covidtracker-figures/landing-page-fig.html",
  destfile="stochastic-fitting-georgia-summaryplot.html"
)


# Mass Testing
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_summary_html.html?token=ADVPF4CAKQMRYPN7AHWARTK6XE724",
  destfile="mass_testing_summary.html"
)

# utils::download.file(
#   url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_html.html?token=ADVPF4ALXGRL7D3SEXLHPRS6LF2RA",
#   destfile="mass_testing_main.html"
# )
# 
# utils::download.file(
#   url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_html_sup.html?token=ADVPF4BYTHRA763OCEOBBLC6LF2TE",
#   destfile="mass_testing_supplement.html"
# )

# Nowcast US
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US.html?token=ADVPF4B6ARFQQXCAV3CFGSK6XE76A",
  destfile="nowcast-US.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-cases.html?token=ADVPF4GUFMCYYZACQK67AY26XFADY",
  destfile="nowcast-US-cases.html"
)

# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-fatalities.html?token=ADVPF4CGOO44UTTLX33MHKK6Q5LPE",
#   destfile="nowcast-US-fatalities.html"
# )

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/under-reporting.html?token=ADVPF4H7H4Z6HRW66I4TMNK6XFAHU",
  destfile="nowcast-US-ascertainment.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/china-nowcast-study.html?token=ADVPF4DDIY5M536VKT6VSDS6XFAMM",
  destfile="nowcast-validation.html"
)

# Standalone nowcast plot for front page
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/USnowcast_plot.html?token=ADVPF4G27K4N4PVL6V5TKWS6XFAPU",
  destfile="USnowcast_plot.html"
)

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/GAnowcast_plot.html?token=ADVPF4CCVJVS4VMEVW55GT26XFARU",
  destfile="GAnowcast_plot.html"
)



# China Spatial Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.html?token=ADVPF4EKLJSAAYANAXZK2TS6WVNA4",
  destfile="china-spatial-web-summary.html"
)

# China Spatial Model - links map - UPDATE MANUALLY - FILE NAME CHANGES
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/maps/link-weights-chloropleth-highest-ten-pct-2020-03-22.html?token=ADVPF4CQ26N47AFQPBQ6WL26WVNDU",
  destfile="china-spatial-link-weights.html"
)

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

# Final Size - web summary
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSizeSummary.html?token=ADVPF4BZ735NSJERKOI6FZC6WVNJK",
  destfile="final-size-web-summary.html"
)

# Final Size - supp
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSize.html?token=ADVPF4BDNYCK6WHAK7GJV5C6WVNM6",
  destfile="final-size-supplement.html"
)



