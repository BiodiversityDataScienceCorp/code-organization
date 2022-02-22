
# this is our main file, that uses "source" to include other files

# load libraries below:
library("spocc")
library("tidyverse")

# Note: the path is from the current working directory, NOT relative to this file
# loads the contents of functions.R, makes functions ready to use
source("src/functions.R")


species<-"Spinus tristis"
myOpts<-list(stateProvince="Oregon", year="2020")
limit<-2000

# calls function defined in functions.R
gfData<-queryGbif(species, myOpts, limit)

gfData

# calls function in functions.R to remove 'absent' rows
#gfData<-removeAbsent(gfData$Spinus_tristis)
#gfData

show(gfData)


x<-attributes(gfData)
x