\name{rank_branches}
\alias{rank_branches}
\title{Rank branches' heights}
\usage{
  rank_branches(dend, diff_height = 1, ...)
}
\arguments{
  \item{dend}{a dendrogram object}

  \item{diff_height}{Numeric scalar (1). Affects the
  difference in height between two branches.}

  \item{...}{not used}
}
\value{
  A dendrogram, after adjusting the height attr in all of
  its branches.
}
\description{
  Adjust the height attr in all of the dendrogram nodes so
  that the tree will have a distance of 1 unit between each
  parent/child nodes.  It can be thought of as ranking the
  branches between themselves.

  This is intended for easier comparison of the topology of
  two trees.

  Notice that this function changes the height of all the
  leaves into 0, thus erasing the effect of
  \link{hang.dendrogram} (which should be run again, if
  that is the visualization you are intereted in).
}
\examples{
# define dendrogram object to play with:
dend <- as.dendrogram(hclust(dist(USArrests[1:5,])))

par(mfrow = c(1,3))

plot(dend)
plot(rank_branches(dend))
plot(hang.dendrogram(rank_branches(dend)))
}
\seealso{
  \link{get_branches_heights},
  \link{get_childrens_heights}, \link{hang.dendrogram},
  \link{tanglegram}
}

