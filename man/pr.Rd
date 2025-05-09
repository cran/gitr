% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gitr-pr.R
\name{pr}
\alias{pr}
\alias{gitr_pr_msgs}
\alias{gitr_pr_sha}
\title{Git PR Utilities}
\usage{
gitr_pr_msgs(branch = NULL)

gitr_pr_sha(branch = NULL)
}
\arguments{
\item{branch}{\code{character(1)}. The name of a branch, typically a
feature branch.}
}
\value{
\code{\link[=gitr_pr_msgs]{gitr_pr_msgs()}}: see \code{\link[=gitr_commit_msgs]{gitr_commit_msgs()}}.

\code{\link[=gitr_pr_sha]{gitr_pr_sha()}}: character vector of SHAs
corresponding to the PR (relative to the default branch).
}
\description{
Git PR Utilities
}
\section{Functions}{
\itemize{
\item \code{gitr_pr_msgs()}: gets the commit messages for the \emph{current} branch
relative to the \verb{origin/\{main,master\}} branch in
the remote. Typically these "new" commits
that would be merged as part of a PR to \verb{origin/\{main,master\}}.

\item \code{gitr_pr_sha()}: gets the commit SHA-1 a branch (by default \emph{current})
relative to the \code{default} branch in the remote, usually either
\code{origin/main} or \code{origin/master}. See \code{\link[=gitr_default_br]{gitr_default_br()}}.
If there are un-pushed commit on the current default branch,
it returns them.

}}
\examples{
\dontrun{
  # SHAs from feature branch differ from default br
  gitr_pr_sha()

  # commit messages from the SHAs above
  # for a PR `branch` -> `remotes/origin/{main,master}`
  gitr_pr_msgs()

  # for a feature branch -> default branch
  gitr_pr_msgs("feature")
}
}
