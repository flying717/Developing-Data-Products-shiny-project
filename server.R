library(UsingR)
library(rpart)
data("mtcars")
fit<-lm(mpg ~ wt + qsec + am, data = mtcars)

library(shiny)
shinyServer(
  function(input, output) {
    output$pred_mpg <- renderText({
      qsec<-input$qsec
      wt<-input$wt
      am<-switch(input$am,
             at = 0,
             mt = 1)
      predict(fit,data.frame(wt,qsec,am))})
  }
)
