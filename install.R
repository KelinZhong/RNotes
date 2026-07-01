# r-notes/install.R
# Installs the R runtime dependencies needed to execute the notebooks
# and registers the IRkernel with Jupyter.
# Run in CI as: Rscript install.R

pkgs <- c(
  # Core
  "IRkernel",

  # Tidyverse and data manipulation
  "tidyverse",
  "lubridate",

  # Modeling / feature engineering
  "tidymodels",
  "textrecipes",
  "jsonlite",
  "fs",
  "timeDate",

  # Causal inference
  "dagitty",      # DAG specification and d-separation
  "ggdag",        # ggplot2-based DAG visualization
  "MatchIt",      # propensity score matching
  "rdrobust",     # regression discontinuity
  "grf",          # causal forests (Athey/Wager)
  "DoubleML",     # double machine learning
  "ranger",       # fast random forest (nuisance models)
  "xgboost",      # gradient boosting (nuisance models)
  "pracma"        # trapz() for Qini coefficient
)

installed <- rownames(installed.packages())
to_install <- setdiff(pkgs, installed)

if (length(to_install) > 0) {
  install.packages(to_install, repos = "https://cloud.r-project.org")
}

# Register the kernel so Jupyter Book can find and execute against it
IRkernel::installspec(name = "ir", displayname = "R", user = TRUE)
