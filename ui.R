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
  titlePanel("Final Project Assignment - Data Product Development"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        titlePanel("Covariates in my dataset"),
        h4("Sepal.Length"),
       checkboxInput("Sepal.Length", "Use/Do Not use", value = T),
       h4("Petal.Length"),
       checkboxInput("Petal.Length", "Use/Do Not use", value = T),
       h4("Sepal.Width"),
       checkboxInput("Sepal.Width", "Use/Do Not use", value = T),
       h4("Petal.Width"),
       checkboxInput("Petal.Width", "Use/Do Not use", value = T),
       tags$br(),
       tags$b("N.B. Select at least two variables")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        h3("Plot of selected covariates"),
       plotOutput("plot"),
       textOutput("lm_coefficients")
    )
  )
))
