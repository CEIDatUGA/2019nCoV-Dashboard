# fetch summaries

# Data Summary - China
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China-Web-Summary.html?token=ADVPF4DPH3X2WVLKRTM2BNC6KPI2C",
  destfile="nCov-Mapping-China-Web-Summary.html"
)

# https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China.html?token=ADVPF4F5YXAKG7L3L7D6RL26JC6V2

# Data Summary - World
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-World-Web-Summary.html?token=ADVPF4BVUAS7BFT3YEVOEKK6KPI7A",
  destfile="nCov-Mapping-World-Web-Summary.html"
)

# Data Summary - Epidemic Curves
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/epidemic-curves-web-summary.html?token=ADVPF4HHW4NFAE5HROZYXOS6KQGAU",
  destfile="epidemic-curves-web-summary.html"
)


# Context
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-context/master/web-summary.html?token=ADVPF4EEBY7YWACCGE2DHMK6KPJHI",
  destfile="context-web-summary.html"
)

# Epidemic Characteristics
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/web-summary.html?token=ADVPF4DFNA5T722AY6H7HQ26LEOCC",
  destfile="parameters-web-summary.html"
  )

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-parameters/master/ncov-parameters.html?token=ADVPF4CZ7HVY3VVPDQ5TMJ26LEOH2G",
  destfile="parameters-supplement.html"
)

# R_eff outside China

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-Reff-outside-China/master/web-summary.html",
  destfile="reff-outside-web-summary.html"
)

# Stochastic Model
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/web-summary.html?token=ADVPF4BS5FEA3TZFR2QTLIK6I3O4S",
  destfile="stochastic-web-summary.html"
)

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-wuhan-stochastic-model/master/stochastic-model.html",
  destfile="stochastic-model.html"
)

# Mass Testing
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_summary_html.html?token=ADVPF4EVFXIUQ77ZCO5U3BS6LF2B6",
  destfile="mass_testing_summary.html"
)

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_html.html?token=ADVPF4ALXGRL7D3SEXLHPRS6LF2RA",
  destfile="mass_testing_main.html"
)

utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoV_MassTesting/master/COVID19_CEID_html_sup.html?token=ADVPF4BYTHRA763OCEOBBLC6LF2TE",
  destfile="mass_testing_supplement.html"
)


# # Nowcast
# utils::download.file(
#   url="",
#   destfile="nowcast-web-summary.html"
# )

# China Spatial Model
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/web_summary.html?token=ADVPF4GZVSRV4WD2MVTTUKS6KPJLQ",
  destfile="china-spatial-web-summary.html"
)

# China Spatial Model - links map - UPDATE MANUALLY - FILE NAME CHANGES
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/CoronavirusSpatial/master/maps/link-weights-chloropleth-highest-ten-pct-2020-02-11.html?token=ADVPF4AATSPBCIWUZWGSE326LEOO2",
  destfile="china-spatial-link-weights.html"
)

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

