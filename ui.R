
shinyUI(

  fluidPage(

    titlePanel("Miles Per Gallon Calculator"),

    br(),

    fluidRow(
      column(2,
        selectInput("cylinders", "Cylinders:", c("Four" = "4", "Six" = "6", "Eight" = "8")),
        numericInput('weight', 'Weight:', 3, min = 1, max = 6, step = 0.1),
        br(),br(),
        submitButton('Submit')
      ),
      column(10,
        plotOutput("distPlot")
      ),

      textOutput("text1")
    )
  )
)
