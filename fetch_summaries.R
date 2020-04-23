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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary.html?token=ADVPF4DXPHC4YNWQYVWM6OC6VBUFK",
  destfile="early-intervention-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary2.html?token=ADVPF4DSJTQW6UWEOWXFSAK6UV7QC",
  destfile="early-intervention-web-summary2.html"
)

# Data Summary - China
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China-Web-Summary.html?token=ADVPF4ESLA56RLFVOYLGB5S6UMFOO",
  destfile="nCov-Mapping-China-Web-Summary.html"
)

# https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China.html?token=ADVPF4F5YXAKG7L3L7D6RL26JC6V2

# Data Summary - World
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-World-Web-Summary.html?token=ADVPF4APSBJPA5LH3CYQUAK6VLSM6",
  destfile="nCov-Mapping-World-Web-Summary.html"
)

# # Data Summary - US
# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-US-Web-Summary.html?token=ADVPF4AFLQUPWLHSJWKZSYC6RXLCK",
#   destfile="nCov-Mapping-US-Web-Summary.html"
# )

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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-context/master/web-summary.html?token=ADVPF4FDO7FUZY5MB6EE5Z26UG2VO",
  destfile="context-web-summary.html"
)

# Epidemic Characteristics
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/web-summary.html?token=ADVPF4D7RGCFVBZXNOCGWIK6U3KIO",
  destfile="parameters-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/ncov-parameters.html?token=ADVPF4ASG2KXGUVXAETAGOK6U3KLE",
  destfile="parameters-supplement.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/parameters-US.html?token=ADVPF4AYUMBXUAX3JRTZW6S6U3KMQ",
  destfile="parameters-US.html"
)

# R_eff outside China

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-Reff-outside-China/master/web-summary.html",
  destfile="reff-outside-web-summary.html"
)

# Stochastic Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/web-summary.html?token=ADVPF4BDHPFXXZQKDZ6PEOC6VF3KM",
  destfile="stochastic-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model-georgia-web-summary.html?token=ADVPF4GXZBHYLKCHRDN4BQS6VF3MQ",
  destfile="stochastic-georgia-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model.html?token=ADVPF4D3XEEIYV54YJ7WLIC6VF3OM",
  destfile="stochastic-model.html"
)

# Mass Testing
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_summary_html.html?token=ADVPF4GP3HJGLY2ETMCX6SS6UV7UE",
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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US.html?token=ADVPF4BJXDSX6MUBE4BMY5C6UV72C",
  destfile="nowcast-US.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-cases.html?token=ADVPF4DZGXCS3BEAIGJ6CX26UV74A",
  destfile="nowcast-US-cases.html"
)

# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-fatalities.html?token=ADVPF4CGOO44UTTLX33MHKK6Q5LPE",
#   destfile="nowcast-US-fatalities.html"
# )

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/under-reporting.html?token=ADVPF4GX7FDVKG3GTCECU3S6UV76C",
  destfile="nowcast-US-ascertainment.html"
)

# Standalone nowcast plot for front page
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/USnowcast_plot.html?token=ADVPF4FLUR4UK4363XYTPOS6UWABC",
  destfile="USnowcast_plot.html"
)

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/GAnowcast_plot.html?token=ADVPF4FMWT3DWJMRFZNC45S6VASN4",
  destfile="GAnowcast_plot.html"
)

# China Spatial Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.html?token=ADVPF4FAPH44XX52VAVVNDC6VLST2",
  destfile="china-spatial-web-summary.html"
)

# China Spatial Model - links map - UPDATE MANUALLY - FILE NAME CHANGES
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/maps/link-weights-chloropleth-highest-ten-pct-2020-03-22.html?token=ADVPF4B5GJAQUPHC3NKY4BK6VLSWS",
  destfile="china-spatial-link-weights.html"
)

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

# Final Size - web summary
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSizeSummary.html?token=ADVPF4CSY2IEFC6PIWEI2X26VLS2C",
  destfile="final-size-web-summary.html"
)

# Final Size - supp
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSize.html?token=ADVPF4FM6ACXNYONGMIQ6EC6VLS4I",
  destfile="final-size-supplement.html"
)



