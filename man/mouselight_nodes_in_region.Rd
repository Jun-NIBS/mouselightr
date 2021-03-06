% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate.R
\name{mouselight_nodes_in_region}
\alias{mouselight_nodes_in_region}
\alias{mouselight_nodes_in_region.neuron}
\alias{mouselight_nodes_in_region.neuronlist}
\title{Find out how many nodes a neuron has in each brain region}
\usage{
mouselight_nodes_in_region(x, brain.areas = NULL, labels = NULL)

\method{mouselight_nodes_in_region}{neuron}(x, brain.areas = NULL,
  labels = NULL)

\method{mouselight_nodes_in_region}{neuronlist}(x, brain.areas = NULL,
  labels = NULL)
}
\arguments{
\item{x}{a \code{neuronlist} of tracings that have been read into R using \code{\link{mouselight_read_neurons}}, with \code{method = "native"}.}

\item{brain.areas}{a vector of brain region acronyms. See \code{\link{mouselight_brain_region_info}}.}

\item{labels}{a vector of label IDs, denoting neuron compartment e.g. 2 for axon, 3 for dendrite, 0 for intervening path, etc. See \code{\link{mouselight_read_neurons}}.}

\item{...}{methods sent to \code{mouselight_fetch_swc}}
}
\value{
A data.frame
}
\description{
After reading tracgings from the MouseLight project (\code{\link{mouselight_read_brain}}),
find out in which neuropils it has its nodes
}
\details{
Note, when using \code{mouselight_neurons_by_brain_region}, the brain region
  returned can belong to larger brain regions, which are agglomerations of
  smaller ones. See \code{\link{mouselight_brain_region_info}}.
}
\examples{
\donttest{
ids=c("1ccbc478-88fb-4181-a4de-d0c22ed9738b",
  "3afa5e41-374d-45bc-a546-03f362d93649")
nn=mouselight_read_neurons(ids, method = "native")
nibr = mouselight_nodes_in_region(nn, labels = c(0, 2, 3))
print(nibr)

# Counts in a specific brain area
cing.nodes = mouselight_nodes_in_region(nn, labels = c(0, 2, 3), brain.areas = "cing")
print(cing.nodes)

}
}
\seealso{
\code{\link{mouselight_read_brain}}, \code{\link{mouselight_brain_region_info}}, \code{\link{mouselight_neuron_info}}, \code{\link{mouselight_read_neurons}}
}
