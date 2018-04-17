#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
shinyUI(fluidPage(
    titlePanel("Plot Iris DataSet"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "How Many Random Numbers Should be Plotted?",
                         value = 150, min = 1, max = 150, step = 0.1),
            sliderInput("sliderX", "Pick Minimum and Maximum X Values",2,10,
                         value = c(min(iris$Sepal.Length),max(iris$Sepal.Length))),
            sliderInput("sliderY", "Pick Minimum and Maximum Y Values",0,6,
                         value = c(min(iris$Sepal.Width),max(iris$Sepal.Width))),
            checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
            checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
            checkboxInput("show_title", "Show/Hide Title", value = TRUE)
        ),
        mainPanel(
            h3("Graph of Sepal Length v/s Sepal Width of iris dataset"),
            plotOutput("plot1")
        )
    )
))