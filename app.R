library(shiny)
library(ggplot2)

# Create a Shiny UI
ui = fluidPage(
  titlePanel("Math Function Plotter"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("function_input", "Enter a mathematical function (e.g., x^2 + sin(x)):"),
      numericInput("x_min", "X-axis Min:", -10, min = -100, max = 0),
      numericInput("x_max", "X-axis Max:", 10, min = 0, max = 100),
      numericInput("y_min", "Y-axis Min:", -10, min = -100, max = 0),
      numericInput("y_max", "Y-axis Max:", 10, min = 0, max = 100),
      selectInput("color", "Line Color:", choices = c("red", "blue", "green", "black")),
      selectInput("linetype", "Line Type:", choices = c("solid", "dashed", "dotted")),
      actionButton("plot_button", "Plot")
    ),
    
    mainPanel(
      plotOutput("function_plot")
    )
  )
)

# Create a server function
server = function(input, output) {
  # Define a reactive expression for generating the plot
  plot_data = reactive({
    # Parse the mathematical function entered by the user
    expr = parse(text = input$function_input)
    
    # Create a data frame with x values within the specified limits
    x_values = seq(input$x_min, input$x_max, length.out = 1000)
    data = data.frame(x = x_values)
    
    # Evaluate the mathematical function for the given x values
    data$y = eval(expr, envir = data)
    
    # Return the data frame
    data
  })
  
  # Observe the "Plot" button click and generate the plot
  observeEvent(input$plot_button, {
    p = ggplot(plot_data(), aes(x, y)) +
      geom_line(color = input$color, linetype = input$linetype) +
      xlim(input$x_min, input$x_max) +
      ylim(input$y_min, input$y_max) +
      labs(title = "Mathematical Function Plot")
    
    output$function_plot = renderPlot({
      print(p)
    })
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
