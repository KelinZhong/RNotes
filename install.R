options(repos = c(
  RSPM = "https://packagemanager.posit.co/cran/__linux__/jammy/latest",
  CRAN = "https://cloud.r-project.org"
))

pkgs <- c(
  "IRkernel",
  "tidyverse", "lubridate",
  "tidymodels", "textrecipes", "jsonlite", "fs", "timeDate",
  "dagitty", "ggdag",
  "MatchIt",
  "rdrobust",
  "grf",
  "DoubleML",
  "ranger", "xgboost", "pracma",
  "patchwork", "scales", "slider"
)

installed <- rownames(installed.packages())
to_install <- setdiff(pkgs, installed)

if (length(to_install) > 0) {
  install.packages(
    to_install,
    dependencies = c("Depends", "Imports", "LinkingTo"),
    quiet = TRUE
  )
}

IRkernel::installspec(name = "ir", displayname = "R", user = TRUE)
