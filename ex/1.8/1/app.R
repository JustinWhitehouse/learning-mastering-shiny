library(shiny)

ui <- fluidPage(
  textInput("name", "What is your name?"),
  textOutput("greeting"),
  "Hello World"
)

server <- function(input, output, session){
  
  name <- reactive({input$name})
  
  output$greeting <- renderText({
    paste0("Hello ", name())
  })
  
}

shinyApp(ui, server)
