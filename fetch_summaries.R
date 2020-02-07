# fetch summaries

# Data Summary - China
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-China.html?token=ADVPF4EKBDF7LNNBEZF2AJS6I3MH6",
  destfile="nCov-Mapping-China.html"
)

# Data Summary - World
utils::download.file(
  url="https://raw.githubusercontent.com/CEIDatUGA/ncov-data-summary/master/nCov-Mapping-World.html?token=ADVPF4FIRBQXUOEWTROHZKC6I3MM4",
  destfile="nCov-Mapping-World.html"
)

# # Context
# utils::download.file(
#   url="",
#   destfile="context-web-summary.html"
# )

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

# # China Spatial Model
# utils::download.file(
#   url="",
#   destfile="china-spatial-web-summary.html"
# )

# # World Spatial Model
# utils::download.file(
#   url="",
#   destfile="world-spatial-web-summary.html"
# )

