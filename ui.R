library(shiny)

# Define UI for application that calculates Body Mass Index (BMI)
shinyUI(fluidPage(
  titlePanel("BMI Calculator"),

  # Sidebar with slider inputs for the weight and height
  sidebarLayout(
    sidebarPanel(
      sliderInput("height",
                  "Height (inches):",
                  min = 1,
                  max = 90,
                  value = 70),
      sliderInput("weight",
                  "Weight (pounds):",
                  min = 1,
                  max = 400,
                  value = 200)
    ),

    mainPanel(withMathJax(),
      h3("Instructions"),
      p("The body mass index (BMI) is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height:"),
      p("$$BMI = 703 \\times \\frac{weight}{height^2}$$"),
      p("Where weight is in pounds and height is in inches."),
      p("Choose your weight in pounds and weight in inches on the sliders on the left in order to calculate your BMI."),
      h3("Your BMI is:"),
      verbatimTextOutput("bmi"),
      h3("BMI Categories:"),
      tags$ul(
        tags$li("Underweight = <18.5", style="color: red;"),
        tags$li("Normal weight = 18.5–24.9 ", style="color: green;"),
        tags$li("Overweight = 25–29.9 ", style="color: #DAA520;"),
        tags$li("Obesity = BMI of 30 or greater", style="color: red;")
      )
    )
  )
))
