% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import.mat.R
\name{import.mat}
\alias{import.mat}
\title{Imports matrices}
\usage{
import.mat(header = TRUE, sep = ",", row.names = 1, ...)
}
\arguments{
\item{header}{a logical value indicating whether the file contains the names of the variables as its first line. If missing, the value is determined from the file format: header is set to TRUE if and only if the first row contains one fewer field than the number of columns.}

\item{sep}{the field separator character. Values on each line of the file are separated by this character. If sep = "" (the default for read.table) the separator is ‘white space’, that is one or more spaces, tabs, newlines or carriage returns.}

\item{row.names}{a vector of row names. This can be a vector giving the actual row names, or a single number giving the column of the table which contains the row names, or character string giving the name of the table column containing the row names.
If there is a header and the first row contains one fewer field than the number of columns, the first column in the input is used for the row names. Otherwise if row.names is missing, the rows are numbered.
Using row.names = NULL forces row numbering. Missing or NULL row.names generate row names that are considered to be ‘automatic’ (and not preserved by as.matrix).}

\item{...}{Further arguments to be passed to \code{read.csv}.}
}
\description{
Imports all current directory filesin the format of a list of matrices.
}
\details{
returns a single matrix if there is only one file in the folder or a list of matrices in the same order as in the original folder.
By default, it considers that the matrix has header and row names=1.
It also orders the matrix according to row names.
}
\author{
Sebastian Sosa, Ivan Puga-Gonzalez
}
