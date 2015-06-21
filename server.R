library(shiny)
data(cars)
lmstop <- lm(dist~speed+I(speed^2), data=cars)

shinyServer(
  function(input, output) {
    distance <- reactive({ 
      validate(
        need(input$speed, 'Please insert the speed!')
      )
      predict(lmstop, newdata=data.frame(speed=as.numeric(c(input$speed)) ))
    })
    
    output$distance <- renderText({distance()})
    
  }
)