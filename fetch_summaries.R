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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary.html?token=ADVPF4EJIKFXFY4GN6XD47S6TMEB2",
  destfile="early-intervention-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-early-intervention/master/web-summary2.html?token=ADVPF4FWFZQIR5KVMMHGHZC6TMED4",
  destfile="early-intervention-web-summary2.html"
)

# Data Summary - China
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China-Web-Summary.html?token=ADVPF4ENE4LKR2ASF766DR26S4LJA",
  destfile="nCov-Mapping-China-Web-Summary.html"
)

# https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China.html?token=ADVPF4F5YXAKG7L3L7D6RL26JC6V2

# Data Summary - World
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-World-Web-Summary.html?token=ADVPF4F6WSXKOZTG7YODCXK6S4LMK",
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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-context/master/web-summary.html?token=ADVPF4A2NIHAQ24R45VUGZS6S4RKE",
  destfile="context-web-summary.html"
)

# Epidemic Characteristics
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/web-summary.html?token=ADVPF4CJAU5NHD5WSPSGKLC6SMK7C",
  destfile="parameters-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/ncov-parameters.html?token=ADVPF4CYRL2BNZT7MGHN6O26SMLCM",
  destfile="parameters-supplement.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/parameters-US.html?token=ADVPF4CFWMHNXVJKMZRVCSC6SMLFY",
  destfile="parameters-US.html"
)

# R_eff outside China

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-Reff-outside-China/master/web-summary.html",
  destfile="reff-outside-web-summary.html"
)

# Stochastic Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/web-summary.html?token=ADVPF4GS5XRXS2VMXFCGHI26SXBSI",
  destfile="stochastic-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model-georgia-web-summary.html?token=ADVPF4ATUKP5LVYFLFNA2N26SXBV2",
  destfile="stochastic-georgia-web-summary.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model.html?token=ADVPF4FLXVNM3ENHU55RRUC6SXBX2",
  destfile="stochastic-model.html"
)

# Mass Testing
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_summary_html.html?token=ADVPF4F433DZNKGQL5MIBAC6TMEIU",
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
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US.html?token=ADVPF4EBPSKY62WMJWYO5O26TMEP6",
  destfile="nowcast-US.html"
)

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-cases.html?token=ADVPF4GGZWXDVNNOSW7IF326TMER6",
  destfile="nowcast-US-cases.html"
)

# fetch_and_fix(
#   url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/nowcast-US-fatalities.html?token=ADVPF4CGOO44UTTLX33MHKK6Q5LPE",
#   destfile="nowcast-US-fatalities.html"
# )

fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/under-reporting.html?token=ADVPF4HAOQFF7YA5H65XOIC6TMEUY",
  destfile="nowcast-US-ascertainment.html"
)

# Standalone nowcast plot for front page
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-nowcast/master/USnowcast_plot.html?token=ADVPF4EFPVN2H4UF2EQJBUS6TMEYK",
  destfile="USnowcast_plot.html"
)

# China Spatial Model
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.html?token=ADVPF4BB24MDCL3PLZK5QNS6S4ROW",
  destfile="china-spatial-web-summary.html"
)

# China Spatial Model - links map - UPDATE MANUALLY - FILE NAME CHANGES
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/maps/link-weights-chloropleth-highest-ten-pct-2020-03-22.html?token=ADVPF4B4ZHI5FKWTUFZAAG26S4RRM",
  destfile="china-spatial-link-weights.html"
)

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

# Final Size - web summary
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSizeSummary.html?token=ADVPF4A55BUAGFBSECD5JLC6S4RVC",
  destfile="final-size-web-summary.html"
)

# Final Size - supp
fetch_and_fix(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-coupled-outbreaks/master/finalSize.html?token=ADVPF4AZCMCS3642ZD4PST26S4RXG",
  destfile="final-size-supplement.html"
)



