library(shiny)

pageWithSidebar(
  headerPanel('Analysis of Top 200 Highest-Grossing Movies'),
  sidebarPanel(
    fileInput("file1", label = h3("File input")),
    
    checkboxInput("D", label = strong("X-Variable Distribution"), value = FALSE),
    selectInput('xcol', 'X Variable', names(df), selected=names(df)[[1]]),
    selectInput('ycol', 'Y Variable', names(df), selected=names(df)[[2]]),
    checkboxInput("L", label = strong("Linear model"), value = FALSE),
    
    
    sliderInput("Thickness",
                "Line Thickness:",
                min = 1,  max = 50, value = 10)
    
    ),
  mainPanel(
    plotOutput('plot1')
  )
)