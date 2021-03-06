% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trees.R
\name{EmbedBooster}
\alias{EmbedBooster}
\title{Embed data in high-dimensional space with a boosted tree model.}
\usage{
EmbedBooster(x, model, nJobs = parallel::detectCores() - 1)
}
\arguments{
\item{x}{input data (matrix, data.frame, or data.table). Shape is n x p.}

\item{model}{an xgb.Booster model}
}
\value{
list of 2: 'data': data embedded into high-dim space, 'treeCuts': vector defining each tree's embedding.
}
\description{
Embed a dataset into a high-dimensional binary space with a boosted tree model.
Largely just assembles trees from XGBoost model and sends data through each tree.
}
