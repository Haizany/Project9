#install.packages("shiny")
# ui.R
# make sure working directory is set
# install.packages("lubridate")

library(shiny)
#library(lubridate)
#library(ggplot2)

ui<-fluidPage(

  headerPanel("Air Pollutant Index (API) 2013-2015: Banting, Selangor, MALAYSIA"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId ="year", label="Select Year", choices=c(2013,2014,2015), selected=2014),
      selectInput(inputId="month", label="Select Month", choices=c(1,2,3,4,5,6,7,8,9,10,11,12), selected=1),
      p("This apps analyses the Air Pollution Index (API) readings of Banting from 2013-2015."),
      p("Banting is a principal town in the district of Kuala Langat, Selangor in Malaysia. Banting has a population of 48,240."),
      p("You just need to select year by clicking on the 'Select Year' and 'Select Month' drop down buttons."),
      p("*** Please note that data for the year 2013 starts from August and the data for 2015 is only up to February ***")
    ),
    mainPanel(
      h3("Air Pollution Index (API) for Banting"),
     
      p("Below are the analysis of API readings for Banting from 2013-2015 for the year and month selected."),
      plotOutput("plot1")
    )
  )

)


