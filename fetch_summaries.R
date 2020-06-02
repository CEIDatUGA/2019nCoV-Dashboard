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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary.html?token=ADVPF4A7F3QN27ICXNN4RCK6YKDPU",
  destfile="early-intervention-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary2.html?token=ADVPF4DHAZJN6KBXCY7I74K6YKDOE",
  destfile="early-intervention-web-summary2.html"
)

# Maps 

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/chinaMap.html?token=ADVPF4FYY6D7JV5MFNXD3A26YUSPU",
  destfile="maps-china.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/usMap.html?token=ADVPF4F2YLYEQUWJSQSTLD26YUSSE",
  destfile="maps-us.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/worldMap.html?token=ADVPF4FEUMSPNSDYDGA47QK6YUSTU",
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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-context/master/web-summary.html?token=ADVPF4GMYZMNYXBKBOGRAAS6X25D4",
  destfile="context-web-summary.html"
)

# Epidemic Characteristics
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/web-summary.html?token=ADVPF4HW6RXJOG5L5KGEYXS6YUSWG",
  destfile="parameters-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/ncov-parameters.html?token=ADVPF4CFVQTMANZPV6KETQS6YUS2C",
  destfile="parameters-supplement.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/parameters-US.html?token=ADVPF4D5NHDWO7QR3H4M5A26YUS34",
  destfile="parameters-US.html"
)

# R_eff outside China

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-Reff-outside-China/master/web-summary.html",
  destfile="reff-outside-web-summary.html"
)

# Stochastic Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/web-summary.html?token=ADVPF4BPZSAU7QX54XV3ISS6XU5GK",
  destfile="stochastic-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model.html?token=ADVPF4H5P4GYH5QPITSKX7S6XU5M4",
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

# Splinedev Georgia Pomp model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/COVID-GA-model/splinedev/web-summary.html",
  destfile="stochastic-fitting-georgia-web-summary.html"
)
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/COVID-GA-model/splinedev/output/figures/covidtracker-figures/landing-page-fig.html",
  destfile="stochastic-fitting-georgia-summaryplot.html"
)



# Mass Testing
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_summary_html.html?token=ADVPF4EFOQLLJSQWHRJLOFS6YKDSY",
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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US.html?token=ADVPF4EJMGXKTMQOKF4GCZS6YKD7C",
  destfile="nowcast-US.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-cases.html?token=ADVPF4HGL3JAQPZUNXIC5DS6YKD4A",
  destfile="nowcast-US-cases.html"
)

# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-fatalities.html?token=ADVPF4CGOO44UTTLX33MHKK6Q5LPE",
#   destfile="nowcast-US-fatalities.html"
# )

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/under-reporting.html?token=ADVPF4EMVDGCZNDMHRWN4OS6YKD2G",
  destfile="nowcast-US-ascertainment.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/china-nowcast-study.html?token=ADVPF4FG73D6UOBCFG655HS6YKEBM",
  destfile="nowcast-validation.html"
)

# Standalone nowcast plot for front page
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/USnowcast_plot.html?token=ADVPF4DV4EK2AUJBWIMSV3C6YKEDI",
  destfile="USnowcast_plot.html"
)

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/GAnowcast_plot.html?token=ADVPF4HSIY65W26QO4JCD5C6YKDXW",
  destfile="GAnowcast_plot.html"
)



# China Spatial Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.html?token=ADVPF4CBYEP4UI4NQHPQBES6X25UM",
  destfile="china-spatial-web-summary.html"
)

# China Spatial Model - links map - UPDATE MANUALLY - FILE NAME CHANGES
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/maps/link-weights-chloropleth-highest-ten-pct-2020-03-22.html?token=ADVPF4BBTQTNL5QXV57QMTK6X25XE",
  destfile="china-spatial-link-weights.html"
)

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

# Final Size - web summary
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSizeSummary.html?token=ADVPF4CTGW37LMJ4MIUXZR26X7JZY",
  destfile="final-size-web-summary.html"
)

# Final Size - supp
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSize.html?token=ADVPF4EKAJ5KEXCXHYJR72S6X7JUE",
  destfile="final-size-supplement.html"
)



