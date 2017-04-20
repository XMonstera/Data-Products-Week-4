#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Factors influencing mpg (using stepwise linear regression) || Data:mtcars"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout( 
      sidebarPanel(
          sliderInput("variables", "Number of variables:",
                       min = 1, max = 7, value = 4, width = '300px')
       ),
            
      # Show a plot of the generated distribution
      mainPanel(plotOutput("distPlot") )
  ),
  hr(),
  print("My recommendation is to use 3 variables for this model")
 )
)
