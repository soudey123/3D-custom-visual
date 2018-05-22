## Create a 3D plot to visualize the change of improved mortality rate
## x-axis element denotes Policy year attribute, y-axis element denotes policy owners' age and 
## z-axis represents the improved mortality rate(Qx)
## Use Plotly package to create 3D plot on RStudio
## add_marker() and rangeslider()are useful fuctions for the creation of 3D plot
## Data (*.xls) 

library(readxl)
library(ggplot2)
library(plotly)
library(dplyr)

dataset <- read_excel("*.xls") 

  dataset%>%
  plot_ly(x = ~ `Pol Yr`, y = ~ age , z = ~ `Final Qx`, size = I(3)) %>%
  add_markers() %>%
  rangeslider()
  


  