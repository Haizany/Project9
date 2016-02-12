library(shiny)
library(lubridate)
library(ggplot2)

server<-function(input,output){
  banting<-read.csv("banting.csv")

  output$plot1<-renderPlot(
    {

      filtered.data<-banting[(year(banting$Date)==input$year & month(banting$Date)==input$month),]
      ggplot(data=filtered.data, aes(x=filtered.data$Hour, y=filtered.data$API))+geom_smooth(color="red") + labs(x="Hour", y="API")
    }
  )

}


