
library(ggplot2)


data(mtcars)

mtcars$cyl <- as.factor(mtcars$cyl)


fit <- lm(mpg ~ cyl + wt, data=mtcars)

prediction <- function(c, w) {
  predict(fit, newdata=data.frame(cyl=factor(c), wt=c(w)))
}


shinyServer(

  function(input, output) {

    output$distPlot <- renderPlot({
      result <- prediction(input$cylinders, input$weight)

      p <- ggplot(mtcars, aes(wt, mpg))
      p <- p + aes(shape = cyl)
      p <- p + geom_point(aes(colour = cyl), size = 4)
      p <- p + geom_point(colour="grey90", size = 1.5)
      p <- p + geom_vline(xintercept = input$weight)
      p <- p + geom_hline(yintercept = result)

      output$text1 <- renderText({ 
        paste("Predicted miles per gallon: ", round(result, digits=3))
      })

      p

    })
  }

)
