library(shiny)

ui <- fluidPage(
  
  textOutput("a_label"),
  verbatimTextOutput("a"),

  textOutput("b_label"),
  textOutput("b"),
  
  textOutput("c_label"),
  verbatimTextOutput("c"),
  
  textOutput("d_label"),
  verbatimTextOutput("d")
    
)

server <- function(input, output, session){
  
  output$a_label <- renderText("1.a")
  output$a <- renderPrint(summary(mtcars))
  
  output$b_label <- renderText("1.b")
  output$b <- renderText("Good morning!")
  
  output$c_label <- renderText("1.c")
  output$c <- renderPrint(t.test(1:5, 2:6))
  
  output$d_label <- renderText("1.d")
  output$d <- renderText(str(lm(mpg ~ wt, data = mtcars)))
  
}


shinyApp(ui, server)