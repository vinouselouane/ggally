% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{v1_ggmatrix_theme}
\alias{v1_ggmatrix_theme}
\title{Modify a \code{\link{ggmatrix}} object by adding an \pkg{ggplot2} object to all}
\usage{
v1_ggmatrix_theme()
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

This function allows cleaner axis labels for your plots, but is deprecated.
You can achieve the same effect by specifying strip's background and placement
properties (see Examples).
}
\examples{
# Small function to display plots only if it's interactive
p_ <- GGally::print_if_interactive

# Cleaner axis labels with v1_ggmatrix_theme
p_(ggpairs(iris, 1:2) + v1_ggmatrix_theme())

# Move the column names to the left and bottom
p_(ggpairs(iris, 1:2, switch = "both") + v1_ggmatrix_theme())

# Manually specifying axis labels properties
p_(
  ggpairs(iris, 1:2) +
  theme(
    strip.background = element_rect(fill = "white"),
    strip.placement = "outside"
  )
)

# This way you have even more control over how the final plot looks.
# For example, if you want to set the background color to yellow:
p_(
  ggpairs(iris, 1:2) +
  theme(
    strip.background = element_rect(fill = "yellow"),
    strip.placement = "outside"
  )
)
}
\keyword{internal}
