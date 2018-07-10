library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Car's MPG Prediction"),
    
    sidebarPanel(
      numericInput('wt', 'Weight (1000 lb)',3,min=1.5,max=6,step=0.1),
      numericInput('qsec', '1/4 mile time (sec)',17,min=14,max=25,step=0.1),
      radioButtons("am", "Transmission Type",
                         c("Automatic" = "at",
                           "Manual" = "mt")),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of predicted MPG'),
      verbatimTextOutput("pred_mpg")
    )
  )
)
