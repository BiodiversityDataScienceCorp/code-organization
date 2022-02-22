# Jeremy McWilliams
# Lewis & Clark College


# load libraries below:
library("spocc")
library("tidyverse")
library("sp")
library("raster")
library("maptools")
library("rgdal")
library("dismo")


# Note: the path is from the current working directory, NOT relative to this file
# You can run getwd() in the console to confirm the working directory

# loads the contents of functions.R, makes functions ready to use
source("src/functions.R")


########### querying species occurrence data from gbif #################

species<-"Spinus tristis"
limit<-200

obj<-basicGbifQuery(species, limit)

goldFinches<-obj$Spinus_tristis
goldFinches


################### cleaning data #####################

# add code here to clean data
# consider writing/using custom functions




################ create species distribution map ##############

# add code here to create maps


