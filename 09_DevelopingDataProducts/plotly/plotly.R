## An analysis of the coursera johns hopkins data (from a few months back)
## Used to illustrate plotly and ggplot
##
## Brian Caffo 7/10/2014


load("courseraData.rda")


## Make sure that you've followed the first few set up steps
## https://plot.ly/ggplot2/getting-started/
## Particularly set_credentials_file(username=FILL IN, api_key=FILL IN)
library(plotly)


library(ggplot2)
## First do a bar plot in ggplot
g <- ggplot(myData, aes(y = enrollment, x = class, fill = offering)) 
g <- g + geom_bar(stat = "identity")
g

# get key 
library(plotly)
s <- 'ipd49cue04'
Sys.setenv("plotly_username"="JeremyZhu")
Sys.setenv("plotly_api_key"=s)

plotly:::verify("JeremyZhu")
plotly:::verify("ipd49cue04")

plot_ly(mtcars, x = hp, y = mpg,
        mode = "markers",
        color = wt,
        text=paste("Weight:", wt))

## Let's try to get it into plot.ly
py <- ggplotly()
out <- py$ggplotly(g)
out$response$url



