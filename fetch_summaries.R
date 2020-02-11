# fetch summaries

# Data Summary - China
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China-Web-Summary.html?token=ADVPF4EYUYFETO23VJCM43S6JIAYS",
  destfile="nCov-Mapping-China-Web-Summary.html"
)

# https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China.html?token=ADVPF4F5YXAKG7L3L7D6RL26JC6V2

# Data Summary - World
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-World-Web-Summary.html?token=ADVPF4DRFYKFGN4WLZXHP7C6JIBBC",
  destfile="nCov-Mapping-World-Web-Summary.html"
)

# Data Summary - Epidemic Curves
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/epidemic-curves-web-summary.html?token=ADVPF4AWYSELJNNQHOSKXZ26JIL7G",
  destfile="epidemic-curves-web-summary.html"
)


# Context
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-context/master/web-summary.html?token=ADVPF4C3BLB3ZMF6EFYITQC6JICJY",
  destfile="context-web-summary.html"
)

# Epidemic Characteristics
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/web-summary.html?token=ADVPF4BQ3UHCZ2S42I45F2K6I3LIQ",
  destfile="parameters-web-summary.html"
  )

# Stochastic Model
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/web-summary.html?token=ADVPF4BS5FEA3TZFR2QTLIK6I3O4S",
  destfile="stochastic-web-summary.html"
)

# # Nowcast
# utils::download.file(
#   url="",
#   destfile="nowcast-web-summary.html"
# )

# China Spatial Model
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.html?token=ADVPF4A7TNXO27D2IP6EG6C6JIC6W",
  destfile="china-spatial-web-summary.html"
)

# China Spatial Model
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.Rmd?token=ADVPF4CSYIGR26NN6WBWVWC6JP67I",
  destfile="china-spatial-web-summary.Rmd"
)



# China Spatial Model - links map
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/f8b0d4b6f1d721809d17fe2a85919b2e7f11d7f5/maps/link-weights-chloropleth-highest-ten-pct-2020-02-09.html?token=ADVPF4FW2UNUFT522DXAMGC6JKSOA",
  destfile="china-spatial-link-weights.html"
)

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

