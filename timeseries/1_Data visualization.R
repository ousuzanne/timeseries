#Time-series project

#### Read in data ----
getwd()

ts <- read.csv("ts.csv") # read in dataframe
View(ts)

ts$Biomass_mg <- sample (70, size = nrow(ts), replace = T) # mock data

#### Figures ----
library(ggplot2) #read in library and functions

ggplot (ts, aes(x = TimePt, y = Biomass_mg, color = Inoc)) + 
  geom_point() + geom_smooth(method = "lm")

#### Split by treatments ----
PLER<- subset(ts, Inoc == "PLER")
FEMI
REF
