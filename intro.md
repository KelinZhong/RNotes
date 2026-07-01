# R Data Libraries

These notes are the R companion to the **Python Data Libs** chapter. Same
concepts, same teaching structure, same "why this and not that" framing —
ported to **tidyverse** + **tidymodels** + base R instead of pandas / NumPy /
scikit-learn.

This book is built and executed independently of the Python notes: every
code cell below runs live (via the R kernel) at build time, just like the
Python chapters do.

## Contents

- **R Data Libraries** — cover / index (this chapter's table of contents)
- **Base R Reference** — vectors, matrices, indexing, linear algebra,
  broadcasting (recycling), RNG — the R counterpart to the NumPy reference
- **Tidyverse Reference** — `dplyr` / `tidyr` / `stringr` / `lubridate` —
  the R counterpart to the Pandas reference
- **Data Manipulation: Basic** — cleaning patterns (types, nulls,
  duplicates, categories, outliers, column names)
- **Data Manipulation: Intermediate** — file discovery, JSON, nested
  structures, multi-file pipelines
- **Data Manipulation: Advanced** — `recipes` / `rsample` preprocessing
  pipelines, the tidymodels counterpart to scikit-learn `Pipeline` /
  `ColumnTransformer`
- **Business Metrics — R Reference** — `ggplot2` recipes for every metric,
  one section per metric
- **Sampling Reference** — bootstrap, jackknife, sampling designs
- **Statistical Inference Reference** — hypothesis tests, p-values,
  confidence intervals using base R's built-in distribution functions

## A note on scope

This is a faithful port of *ideas*, not a line-by-line transliteration.
Where R's idioms differ meaningfully from Python's (copy-on-modify instead
of views, recycling instead of broadcasting, `recipes` instead of
`ColumnTransformer`, built-in `pt()`/`pnorm()` instead of hand-rolled CDF
math), the R version is rewritten to be idiomatic R — with a comment
flagging the conceptual difference where it matters.
