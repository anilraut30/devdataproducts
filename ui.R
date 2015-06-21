library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculate stopping distance for cars"),
  sidebarPanel(    
    numericInput(inputId="speed", label = "Insert speed (mph)",value = 10,min=0,max=4000,step=1)
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Result",
               p('Needed distance to stop (ft)'),
               textOutput('distance')
      )
      ,tabPanel("Help",
                p('This application will calculate the stopping distance that is needed for a car to stop, expressed in feet. You have to insert the speed of the car (in mph) in the text box on the left.')
      )
    )
  )
  
))