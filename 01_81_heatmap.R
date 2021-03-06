# Copyright Mark Niemann-Ross, 2019
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: heatmap

# first concern about heatmap - data must be a numeric matrix

mySimpleData <- matrix(c(sample(1:25, 40, replace=TRUE)), nrow = 10)
mySimpleData[15] <- 50 # YIKES! an outlier!
mySimpleData[23] <- 45 # YIKES! an outlier!
mySimpleColNames <- c("Wheat", "Rye", "Quinoa", "Rice" )
dimnames(mySimpleData) <- list(c(month.name[2:11]), mySimpleColNames)

# the very basic heatmap
heatmap(mySimpleData) 
# rows and columns are grouped and a dendogram is shown

# use RowV and ColV = NA to suppress dendogram
heatmap(mySimpleData, Rowv = NA, Colv = NA) 

# months from top to bottom
heatmap(mySimpleData, Rowv = NA, Colv = NA, revC = TRUE) 

# scale = none keeps the color -> value consistent
# row/column scaled to mean of 0, stdDev = 1
heatmap(mySimpleData, Rowv = NA, Colv = NA, revC = TRUE, scale = "none") 
heatmap(mySimpleData, Rowv = NA, Colv = NA, revC = TRUE, scale = "row")
heatmap(mySimpleData, Rowv = NA, Colv = NA, revC = TRUE, scale = "column") 

# change the colors
heatmap(mySimpleData, 
        Rowv = NA, Colv = NA, revC = TRUE,
        scale = "none",
        col=terrain.colors(max(mySimpleData))
        ) 

heatmap(mySimpleData, 
        scale = "none",
        col=terrain.colors(max(mySimpleData))
) 
