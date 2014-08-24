library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Simple Calculator - Developing Data Products"),
        sidebarPanel(
            numericInput("value", "Enter a value", min = 0, max = 9999999, step = 1, 0),
            selectInput("op", "Operator", c("Add", "Sub", "Mult", "Div")), 
            actionButton("calcButton", "CALCULATE"),
            actionButton("clrButton", "CLEAR")    
        ),
        mainPanel(
                p("The application is built for Developing Data Products class 
from Coursera. This application allows an user to perform a calculation on 
**Resultant Value** by pressing the **calculate** button in the left navigation 
panel using the value and operation entered by the user."),
                
                p("The user can reset the value of Resultant Value to ZERO 
                  by pressing the clear button"),
                
                h3("Resultant Value"),
                textOutput("result"),
                
                h5("Server Code"),
                imageOutput("img"),
                
                a(href="http://rpubs.com/rparida/DDP_PA", "Course Presentation")
                

        )
))