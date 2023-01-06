library(shiny)

# UI

ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table"),
  "Hello World"
)

# SERVER

server <- function(input, output, session) {
  
  # create reactive expression for dataset
  
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  # render outputs
  
  output$summary <- renderPrint({
    summary(dataset())
  })
  
  output$table <- renderTable({
    dataset()
  })
}

# APP

shinyApp(ui, server)
