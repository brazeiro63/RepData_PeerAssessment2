urlData <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
fileName <- "repdata-data-StormData.csv.bz2"

if (!file.exists(fileName)){
        download.file(urlData, destfile = fileName)
}

con1 <- bzfile(fileName, open = "r", compression = 6  )

if (!exists(stormData)){
        stormData <- read.csv(con1)
}

str(stormData)

