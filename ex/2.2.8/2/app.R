library(shiny)

ui <- fluidPage(
  sliderInput("date","When should we deliver", 
              min=as.Date("2023-1-1"), 
              max=as.Date("2023-12-31"), 
              value=as.Date("2023-6-30")
  )
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)