# Function Plotter
This Shiny app allows users to input a mathematical function and plot it.



## Installation

To use this app, follow these steps:

1. Make sure you have R installed on your system. If not, download and install it from [CRAN](https://cran.r-project.org/mirrors.html).

2. Install the required R packages: Shiny and ggplot2. You can install them using the following commands within R:

   ```R
   install.packages("shiny")
   install.packages("ggplot2")

Then,

3. Clone or download this GitHub repository to your local machine.

4. Open R or RStudio.

5. Set your working directory to the directory where you have the app files:

```
RCopy code
setwd("/path/to/your/directory")
```

6. Run the Shiny app by executing the following command:

```
RCopy code
shiny::runApp("app_directory")
```

Replace "app_directory" with the actual directory where you have saved the app files.

7. The app should open in your default web browser, allowing you to interact with it.



## How to Use

1. Enter a mathematical function in the "Enter a mathematical function" text box. For example, you can input expressions like `x^2 + sin(x)`.
2. Specify the desired x and y-axis limits using the provided input fields.
3. Select the line color and line type from the dropdown menus.
4. Click the "Plot" button to generate the plot based on your input.
5. The plot will be displayed in the main panel, and you can customize it further by adjusting the input parameters and clicking the "Plot" button again.

Enjoy exploring and visualizing mathematical functions with this interactive Shiny app!

------

For more information on Shiny apps and ggplot2 in R, refer to the official documentation:

- [Shiny Documentation](https://shiny.rstudio.com/)
- [ggplot2 Documentation](https://ggplot2.tidyverse.org/)

