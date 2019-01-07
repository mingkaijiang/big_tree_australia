
myDF <- read.csv("data/Individual-Plants/Individual-Plants_1.csv")
myDF <- myDF[-1,]

plotDF <- myDF[,c("Longitude..Decimal.Degrees.",
                  "Latitude..Decimal.Degrees.",
                  "Tree.Diameter.At.Breast.Height.Value")]

colnames(plotDF) <- c("Lon", "Lat", "Diameter")
plotDF$Lon <- as.numeric(as.character(plotDF$Lon))
plotDF$Lat <- as.numeric(as.character(plotDF$Lat))
plotDF$Diameter <- as.numeric(as.character(plotDF$Diameter))

require(fields)
with(plotDF, quilt.plot(Lon, Lat, Diameter))
map(add=T)

### not a lot of spatial coverage