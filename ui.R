library(shiny)

shinyUI(fluidPage (
  
  # Convert Temperature
  
  headerPanel("Temperature Converter"),
  
  fixedRow(
    column(10,
           HTML("This program converts temperature values back and forth between Fahrenheit and Celsius
<h4>How to Use</h4>
<ul>
  <li>
  In the field labeled <b>Temperature (degrees)</b> enter the value of the temperature in degrees
  </li>
  <li>
  Select one of the conversion types listed under <b>Conversion type</b>
  </li>
  <li>
  Click the <b>Go</b> button
  </li>
  <li>
  The converted temperature will be displayed in the <b>Result</b> field.
  </li>
</ul>
<br>")
    )
  ),
  
  fixedRow(
    column(5,
           numericInput("Temperature","Temperature (degrees):", 32),
           radioButtons("Conversion", "Conversion type:",
                        list("Fahrenheit to Celsius" = "F2C",
                             "Celsius to Fahrenheit" = "C2F"), "F2C"),
           submitButton("Go")
    ),
    column(3, 
           HTML("<b>Result:</b>"),
           verbatimTextOutput('oResult')
    )
  )
)
)
