##------------------------------------------------------------------
## The purpose of this script is to:
##	1. Read the raw data files
##------------------------------------------------------------------

##------------------------------------------------------------------
## Clear the workspace
##------------------------------------------------------------------
rm(list=ls())

##------------------------------------------------------------------
## Set the working directory
##------------------------------------------------------------------
setwd("/Users/alexstephens/Development/kaggle/rossmann/data/raw")

##------------------------------------------------------------------
## Read in the various files
##------------------------------------------------------------------
load("001_rossmann.Rdata")

##------------------------------------------------------------------
## merge store data onto
##------------------------------------------------------------------
train.comb  <- merge(train.raw, store.raw, by="Store")
test.comb   <- merge(test.raw,  store.raw, by="Store")

##------------------------------------------------------------------
## Write the raw data to an .Rdata file
##------------------------------------------------------------------
setwd("/Users/alexstephens/Development/kaggle/rossmann/data/proc")
save(samp_sub.raw, train.comb, test.comb, file="002_rossmann.Rdata")
