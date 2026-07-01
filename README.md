# R Study Notes

The R companion to [StudyNotes](https://github.com/KelinZhong/StudyNotes) — the
same data science concepts, ported from pandas / NumPy / scikit-learn to
**tidyverse / tidymodels / base R**.

📖 **Live site:** `https://<your-username>.github.io/<this-repo>/`
*(update this link once GitHub Pages is enabled — see below)*

## Contents

All notebooks live in [`R Data Libs/`](./R%20Data%20Libs):

| Notebook | Covers |
|---|---|
| `Reference_BaseR` | vectors, matrices, indexing, linear algebra, recycling, RNG |
| `Reference_Tidyverse` | dplyr / tidyr / stringr / lubridate |
| `DM_Basic` | cleaning: types, nulls, duplicates, categories, outliers, column names |
| `DM_Intermediate` | reshaping: wide/long, group-by, multi-table joins, time-series, nested data |
| `DM_Advanced` | feature engineering via `recipes` / `rsample` |
| `metrics_R` | business metrics with `ggplot2` |
| `Reference_Sampling` | bootstrap, jackknife, sampling designs |
| `Reference_Inference` | hypothesis testing, confidence intervals |

## Building locally

```bash
# Python toolchain (drives jupyter-book itself)
pip install -r requirements.txt

# R toolchain (executes the notebooks)
Rscript install.R

# Build
jupyter-book build .
```

## Deployment

Pushing to `main` triggers `.github/workflows/deploy.yml`, which builds the
book and publishes `_build/html` to the `gh-pages` branch. Enable GitHub
Pages in **Settings → Pages** with source set to the `gh-pages` branch.
