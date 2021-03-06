% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/words.R
\name{word_top_example}
\alias{word_top_example}
\title{Retrieve a Word's Top Example}
\usage{
word_top_example(key, words, use_canonical = FALSE, ...)
}
\arguments{
\item{key}{a Wordnik API key. These can be obtained
at the \href{http://developer.wordnik.com/}{Wordnik developer portal}.}

\item{words}{a vector of words.}

\item{use_canonical}{whether to use the stemmed, canonical form of the word
(i.e. 'cat', for 'cats') instead of the actual \code{word}. FALSE by default.
Note that for pronunciations specifically, setting it to TRUE may get a wider
range of pronunciations; you should experiment.}

\item{...}{further arguments to pass to httr's GET.}
}
\value{
a data.frame of 5 columns; \code{provider}, \code{year},
\code{rating}, \code{word} and \code{example}.
}
\description{
\code{word_top_example} grabs, as it suggests, the top example for
each entry in \code{words}.
}
\examples{
\dontrun{
examples <- word_top_example(key = "madeupkey", words = c("cat", "dog", "turnip"))
}
}
