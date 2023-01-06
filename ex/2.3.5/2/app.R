library(shiny)

ui <- fluidPage(
  plotOutput("plot", height = "300px", width = "700px")
)
server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), res = 96, alt = "Scatter plot of 5 numbers") # don't know how to see the alt text...
} 

shinyApp(ui, server)