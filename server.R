library(shiny)

shinyServer(function(input, output) {
  output$bmi <- renderPrint({703 * input$weight / (input$height * input$height)})
})
