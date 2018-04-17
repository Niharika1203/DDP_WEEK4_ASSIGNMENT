library(shiny)
shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        set.seed(2016-05-25)
        number_of_points <- input$numeric
        minX <- input$sliderX[1]
        maxX <- input$sliderX[2]
        minY <- input$sliderY[1]
        maxY <- input$sliderY[2]
        dataX <- runif(number_of_points, minX, maxX)
        dataY <- runif(number_of_points, minY, maxY)
        xlab <- ifelse(input$show_xlab, "X Axis", "")
        ylab <- ifelse(input$show_ylab, "Y Axis", "")
        main <- ifelse(input$show_title, "Iris Data Set Plot", "")
        plot(dataX, dataY, xlab = xlab, ylab = ylab, main = main,
             xlim = c(2, 10), ylim = c(0,6))
    })
})