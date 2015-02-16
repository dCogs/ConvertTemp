library(shiny)

convertTemp <- function(temp, conversion) {
  returnTemp = 0
  if (conversion == "F2C") {
    returnTemp <- temp - 32
    if (returnTemp != 0) {
      returnTemp <- round(returnTemp / 1.8, 2)
    }
  }
  if (conversion == "C2F"){
    returnTemp <- temp * 1.8 + 32
  }
  returnTemp
} 


shinyServer(
  function(input, output) {
    output$oTemperature <- renderPrint({input$Temperature})
    output$oConversion <- renderPrint({input$Conversion})
    output$oResult <- renderPrint({convertTemp(input$Temperature, input$Conversion)})
  }

)