library(shiny)

ui <- fluidPage(
  sliderInput("num", "Select a value",
              min = 0, max = 100, value = 0, step = 5,
              animate=animationOptions(
                interval=500,
                loop=FALSE,
                playButton=NULL,
                pauseButton=NULL
              )
  )
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)