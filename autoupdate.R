# script to automatically render site from crontab (MacOS)

library(rmarkdown)

# pandoc location must be hard coded. Find with Sys.getenv("RSTUDIO_PANDOC")
Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc")

rmarkdown::render_site()

