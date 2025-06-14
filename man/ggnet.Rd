% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggnet.R
\name{ggnet}
\alias{ggnet}
\title{Network plot}
\usage{
ggnet(
  net,
  mode = "fruchtermanreingold",
  layout.par = NULL,
  layout.exp = 0,
  size = 9,
  alpha = 1,
  weight = "none",
  weight.legend = NA,
  weight.method = weight,
  weight.min = NA,
  weight.max = NA,
  weight.cut = FALSE,
  group = NULL,
  group.legend = NA,
  node.group = group,
  node.color = NULL,
  node.alpha = alpha,
  segment.alpha = alpha,
  segment.color = "grey50",
  segment.label = NULL,
  segment.size = 0.25,
  arrow.size = 0,
  arrow.gap = 0,
  arrow.type = "closed",
  label = FALSE,
  label.nodes = label,
  label.size = size/2,
  label.trim = FALSE,
  legend.size = 9,
  legend.position = "right",
  names = deprecated(),
  quantize.weights = deprecated(),
  subset.threshold = deprecated(),
  top8.nodes = deprecated(),
  trim.labels = deprecated(),
  ...
)
}
\arguments{
\item{net}{an object of class \code{\link[network]{network}}, or any object
that can be coerced to this class, such as an adjacency or incidence matrix,
or an edge list: see \link[network]{edgeset.constructors} and
\link[network]{network} for details. If the object is of class
\link[igraph:aaa-igraph-package]{igraph} and the
\link[intergraph:intergraph-package]{intergraph} package is installed,
it will be used to convert the object: see
\code{\link[intergraph]{asNetwork}} for details.}

\item{mode}{a placement method from those provided in the
\code{\link[sna]{sna}} package: see \link[sna:gplot.layout]{gplot.layout} for
details. Also accepts the names of two numeric vertex attributes of
\code{net}, or a matrix of numeric coordinates, in which case the first two
columns of the matrix are used.
Defaults to the Fruchterman-Reingold force-directed algorithm.}

\item{layout.par}{options to be passed to the placement method, as listed in
\link[sna]{gplot.layout}.
Defaults to \code{NULL}.}

\item{layout.exp}{a multiplier to expand the horizontal axis if node labels
get clipped: see \link[scales]{expand_range} for details.
Defaults to \code{0} (no expansion).}

\item{size}{size of the network nodes. If the nodes are weighted, their area is proportionally scaled up to the size set by \code{size}.
Defaults to \code{9}.}

\item{alpha}{a level of transparency for nodes, vertices and arrows.
Defaults to \code{1}.}

\item{weight}{the weighting method for the nodes, which might be a vertex
attribute or a vector of size values. Also accepts \code{"indegree"},
\code{"outdegree"}, \code{"degree"} or \code{"freeman"} to size the nodes by
their unweighted degree centrality (\code{"degree"} and \code{"freeman"} are
equivalent): see \code{\link[sna]{degree}} for details. All node weights must
be positive.
Defaults to \code{"none"} (no weighting).}

\item{weight.legend}{the name to assign to the legend created by
\code{weight}.
Defaults to \code{NA} (no name).}

\item{weight.method}{see \code{weight}}

\item{weight.min}{whether to subset the network to nodes with a minimum size,
based on the values of \code{weight}.
Defaults to \code{NA} (preserves all nodes).}

\item{weight.max}{whether to subset the network to nodes with a maximum size,
based on the values of \code{weight}.
Defaults to \code{NA} (preserves all nodes).}

\item{weight.cut}{whether to cut the size of the nodes into a certain number
of quantiles. Accepts \code{TRUE}, which tries to cut the sizes into
quartiles, or any positive numeric value, which tries to cut the sizes into
that many quantiles. If the size of the nodes do not contain the specified
number of distinct quantiles, the largest possible number is used.
See \code{\link[stats]{quantile}} and \code{\link[base]{cut}} for details.
Defaults to \code{FALSE} (does nothing).}

\item{group}{the groups of the nodes, either as a vector of values or as a
vertex attribute. If set to \code{mode} on a bipartite network, the nodes
will be grouped as \code{"actor"} if they belong to the primary mode and
\code{"event"} if they belong to the secondary mode.}

\item{group.legend}{the name to assign to the legend created by
\code{group}.}

\item{node.group}{see \code{group}}

\item{node.color}{a vector of character strings to color the nodes with,
holding as many colors as there are levels in \code{node.group}.
Defaults to \code{NULL}, which will assign grayscale colors to each group.}

\item{node.alpha}{transparency of the nodes. Inherits from \code{alpha}.}

\item{segment.alpha}{the level of transparency of the edges.
Defaults to \code{alpha}, which defaults to \code{1}.}

\item{segment.color}{the color of the edges, as a color value, a vector of
color values, or as an edge attribute containing color values.
Defaults to \code{"grey50"}.}

\item{segment.label}{the labels to plot at the middle of the edges, as a
single value, a vector of values, or as an edge attribute.
Defaults to \code{NULL} (no edge labels).}

\item{segment.size}{the size of the edges, in points, as a single numeric
value, a vector of values, or as an edge attribute.
Defaults to \code{0.25}.}

\item{arrow.size}{the size of the arrows for directed network edges, in
points. See \code{\link[grid]{arrow}} for details.
Defaults to \code{0} (no arrows).}

\item{arrow.gap}{a setting aimed at improving the display of edge arrows by
plotting slightly shorter edges. Accepts any value between \code{0} and
\code{1}, where a value of \code{0.05} will generally achieve good results
when the size of the nodes is reasonably small.
Defaults to \code{0} (no shortening).}

\item{arrow.type}{the type of the arrows for directed network edges. See
\code{\link[grid]{arrow}} for details.
Defaults to \code{"closed"}.}

\item{label}{whether to label the nodes. If set to \code{TRUE}, nodes are
labeled with their vertex names. If set to a vector that contains as many
elements as there are nodes in \code{net}, nodes are labeled with these. If
set to any other vector of values, the nodes are labeled only when their
vertex name matches one of these values.
Defaults to \code{FALSE} (no labels).}

\item{label.nodes}{see \code{label}}

\item{label.size}{the size of the node labels, in points, as a numeric value,
a vector of numeric values, or as a vertex attribute containing numeric
values.
Defaults to \code{size / 2} (half the maximum node size), which defaults to
\code{6}.}

\item{label.trim}{whether to apply some trimming to the node labels. Accepts
any function that can process a character vector, or a strictly positive
numeric value, in which case the labels are trimmed to a fixed-length
substring of that length: see \code{\link[base]{substr}} for details.
Defaults to \code{FALSE} (does nothing).}

\item{legend.size}{the size of the legend symbols and text, in points.
Defaults to \code{9}.}

\item{legend.position}{the location of the plot legend(s). Accepts all
\code{legend.position} values supported by \code{\link[ggplot2]{theme}}.
Defaults to \code{"right"}.}

\item{names}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} see \code{group.legend} and \code{size.legend}}

\item{quantize.weights}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} see \code{weight.cut}}

\item{subset.threshold}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} see \code{weight.min}}

\item{top8.nodes}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} this functionality was experimental and has
been removed entirely from \code{ggnet}}

\item{trim.labels}{\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}} see \code{label.trim}}

\item{...}{other arguments passed to the \code{geom_text} object that sets
the node labels: see \code{\link[ggplot2]{geom_text}} for details.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

Function for plotting network objects using \pkg{ggplot2}, now replaced by the
\code{\link{ggnet2}} function, which provides additional control over
plotting parameters. Please visit \url{https://github.com/briatte/ggnet} for
the latest version of ggnet2, and \url{https://briatte.github.io/ggnet/} for a
vignette that contains many examples and explanations.
}
\details{
The degree centrality measures that can be produced through the
\code{weight} argument will take the directedness of the network into account,
but will be unweighted. To compute weighted network measures, see the
\code{tnet} package by Tore Opsahl (\code{help("tnet", package = "tnet")}).
}
\examples{
# Small function to display plots only if it's interactive
p_ <- GGally::print_if_interactive

library(network)

# random adjacency matrix
x           <- 10
ndyads      <- x * (x - 1)
density     <- x / ndyads
m           <- matrix(0, nrow = x, ncol = x)
dimnames(m) <- list(letters[1:x], letters[1:x])
m[row(m) != col(m)] <- runif(ndyads) < density
m

# random undirected network
n <- network::network(m, directed = FALSE)
n

ggnet(n, label = TRUE, alpha = 1, color = "white", segment.color = "black")

# random groups
g <- sample(letters[1:3], 10, replace = TRUE)
g

# color palette
p <- c("a" = "steelblue", "b" = "forestgreen", "c" = "tomato")

p_(ggnet(n, node.group = g, node.color = p, label = TRUE, color = "white"))

# edge arrows on a directed network
p_(ggnet(network(m, directed = TRUE), arrow.gap = 0.05, arrow.size = 10))
}
\seealso{
\code{\link{ggnet2}} in this package,
\code{\link[sna]{gplot}} in the \code{\link[sna]{sna}} package, and
\code{\link[network]{plot.network}} in the \code{\link[network]{network}}
package
}
\author{
Moritz Marbach and Francois Briatte, with help from Heike Hofmann,
Pedro Jordano and Ming-Yu Liu
}
\keyword{internal}
