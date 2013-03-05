library(shiny)
shinyUI(
  pageWithSidebar(
    
    # Application titile
    headerPanel("Economic Manuscripts: Capital: Volume One"),
    
    sidebarPanel(
      sliderInput("chapter","Choose the Chapter:",min=1,max=33,value=1),
      sliderInput("chapters", "Choose Chapters", min = 1, max = 33, value = c(1,2))
      ),
    
    mainPanel(tableOutput("values"))
  )
)