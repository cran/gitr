% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trim-sha.R
\name{sha}
\alias{sha}
\alias{trim_sha}
\alias{is_sha}
\alias{git_current_sha}
\title{SHA1 Utilities}
\usage{
trim_sha(sha)

is_sha(sha)

git_current_sha()
}
\arguments{
\item{sha}{\code{character(n)}. The commit secure hash algorithm (SHA-1).
If \code{NULL}, typically points to the most recent commit on
the current branch.}
}
\value{
\code{\link[=trim_sha]{trim_sha()}}: \code{character(1)}. The trimmed \code{sha}.
If \code{sha} is not a \code{SHA1} hash, the identical string unchanged.

\code{\link[=is_sha]{is_sha()}}: \code{logical(1)}. If \code{sha} matches the
\code{SHA1} expected pattern.

\code{\link[=git_current_sha]{git_current_sha()}}: \code{character(1)}. The \code{sha}
of the current commit.
}
\description{
SHA1 Utilities
}
\section{Functions}{
\itemize{
\item \code{trim_sha()}: trims the \code{SHA-1} hash from the default full
length to the human-readable short version.

\item \code{is_sha()}: determines whether strings to be tested are a \code{SHA1} hash
via regular expression (\code{"^[a-f0-9]{5,40}$"}) match.

\item \code{git_current_sha()}: gets the current (most recent commit) SHA.

}}
\seealso{
\code{\link[=grepl]{grepl()}}
}
