#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
    iris1= iris[, -5]
    vars = c("Sepal.Length", "Petal.Length", "Sepal.Width", "Petal.Width")
    cov  = reactive({
        
        cov_b = c()
        new = c()
        if(input$Sepal.Length){
                new = c(new, vars[1])
        }
        if(input$Petal.Length){
            new = c(new, vars[2])
        }
        if(input$Sepal.Width){
            new = c(new, vars[3])
        }
        if(input$Petal.Width){
            new = c(new, vars[4])
        }
        cov_b = c(cov_b, new)
    })
    
    model = reactive({
        
        if(length(cov()) > 1){
            
            if(length(cov()) == 2){
                
                
                lm(iris[, which(colnames(iris) %in% cov()[[1]])] ~ iris[, which(colnames(iris) %in% cov()[[2]])])
                
            }
            else if(length(cov()) == 3){
                
                
                lm(iris[, which(colnames(iris) %in% cov()[[1]])] ~ iris[, which(colnames(iris) %in% cov()[[2]])] + 
                       iris[, which(colnames(iris) %in% cov()[[3]])])
                
                
            }
            else if(length(cov() == 4)){
                
                lm(iris[, which(colnames(iris) %in% cov()[[1]])] ~ iris[, which(colnames(iris) %in% cov()[[2]])] + 
                       iris[, which(colnames(iris) %in% cov()[[3]])] +iris[, which(colnames(iris) %in% cov()[[4]])])
                
                
            }
        } 
    })
    
    iris_sub = reactive({
        
        if(length(cov()) > 1){
            if(length(cov()) ==2){
                
                iris1 = iris[, which(colnames(iris) %in% cov())]
                
               
            }
            
            else if(length(cov()) == 3){
                
                
                iris1 = iris[, which(colnames(iris) %in% cov())]
                
                
                
            }
            else if(length(cov() == 4)){
                
                
                
                iris1 = iris[, which(colnames(iris) %in% cov())]
                
                
            }
        } 
    })
    
    
    
    output$plot <- renderPlot({
        plot(iris_sub())
    })
    
    
    output$lm_coefficients <- renderText({
        model()$coefficients
    })

})
