library(shiny)

my_options <- list(`Roman`=list("A", "B", "C"), 
                   `Greek`=list("Alpha", "Beta", "Gamma")
)

ui <- fluidPage(
  selectInput("selection", "Make a selection", 
              choices = my_options),
  textOutput("result")
)

server <- function(input, output, session){
  output$result <- renderText({
    paste("You chose ", input$selection)
  })
}

shinyApp(ui, server)