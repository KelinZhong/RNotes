# r-notes/install.R
# Installs the R runtime dependencies needed to execute the notebooks in
# this folder and to register the IRkernel with Jupyter.
#
# Run in CI as:  Rscript r-notes/install.R

pkgs <- c(
  "IRkernel",     # Jupyter kernel for R
  "tidyverse",    # dplyr, tidyr, ggplot2, stringr, readr, purrr, tibble
  "lubridate",    # date/time handling (part of tidyverse but pinned explicitly)
  "tidymodels",   # recipes, rsample, parsnip, workflows, yardstick
  "textrecipes",  # step_tokenize / step_tfidf for text preprocessing
  "jsonlite",     # JSON parsing (DM_Intermediate)
  "fs",           # path handling, file discovery (DM_Intermediate)
  "timeDate"      # holiday calendars (DM_Advanced, USFederalHolidayCalendar equivalent)
)

installed <- rownames(installed.packages())
to_install <- setdiff(pkgs, installed)

if (length(to_install) > 0) {
  install.packages(to_install, repos = "https://cloud.r-project.org")
}

# Register the kernel so Jupyter Book can find and execute against it.
IRkernel::installspec(name = "ir", displayname = "R", user = TRUE)
