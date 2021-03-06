% Generated by roxygen2 (4.0.2): do not edit by hand
\name{getSSTLinearChangeMat}
\alias{getSSTLinearChangeMat}
\title{getSSTLinearChangeMat}
\usage{
getSSTLinearChangeMat(sstObj, years = 1969:2009)
}
\arguments{
\item{sstObj}{The HadSST Data object}

\item{years}{The range of time in years for the array being used.}
}
\value{
Returns a matrix of average temperature values
}
\description{
\code{getSSTLinearChangeMat} Gets the matrix with linear change coefficients for
temperature in each grid cell using a \code{hadsstData} object
}
\details{
Requires that you have loaded a HADSST data file. Will return a matrix of decadal slopes
for all lat/longs in all selected years.
}
\examples{
sstData <- loadHadSST(directory="./", hadsstFilename="HadISST_sst.nc")

years <- 1960:2009

changeMat <- getSSTLinearChangeMat(sstData, years)

latLonGrid <- expand.grid(lon = sstData$lon, lat = sstData$lat)

library(lattice)
levelplot(changeMat ~ lon * lat,
   data = latLonGrid, col.regions = colorRampPalette(c("blue","white", "red")),
   at=seq(-1,1,length.out=101))
}
\author{
Jarrett Byrnes.
}
\seealso{
\code{\link{getClimateChange}}, \code{\link{getSSTLinearChangeMatFromArray}}
}

