library(shiny)
library(datasets)

r <<- 0
k <<- 0

shinyServer(
    
    function(input, output) {    
        
        output$result <- renderPrint({
                if(input$clrButton > k){r <<- 0; k <<- input$clrButton; r}
                
                input$calcButton
                isolate ({
                if(input$op == "Add") {r <<- r + as.numeric(input$value); r} else 
                if(input$op == "Sub") {r <<- r - as.numeric(input$value); r} else
                if(input$op == "Mult") {r <<- r * as.numeric(input$value); r} else
                if(input$op == "Div") {r <<- r / as.numeric(input$value); r}      
            })
        })
        
        output$img <- renderImage({list(src = 'ServerCode.png')}, deleteFile = FALSE)
        
    }

)