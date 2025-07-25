% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sdspatialpoints.R
\name{sdspatialpoints}
\alias{sdspatialpoints}
\title{Calculate Standard Deviation of Spatial Points}
\usage{
sdspatialpoints(df, coor = NULL, ...)
}
\arguments{
\item{df}{a data frame object.}

\item{coor}{longitude and latitude of the spatial points in the format of c("lon","lat").}
}
\value{
a number of standard deviation.
}
\description{
This function measures the distribution of spatial points by calculating standard deviation of
the distance between points and their centroid. Centroid is the mean longitude and latitute of
all the points provided. Distance is calculated based on Vincenty's great circle distance formula
with default unit as meters.
}
\examples{
lon<- c(-70.1, -70.5, -70.3)
lat<- c(40.74, 40.75, 40.76)
lonlat<- data.frame(lon, lat)
sdspatialpoints(lonlat, coor = c("lon","lat"))

}
