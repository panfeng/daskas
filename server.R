library(shiny)

shinyServer(function(input, output) {
  
  sliderValues<-reactive({
    data.frame(
      Name=c("Single Chapter","Many Chapters"),
      Value=as.character(
        c(
          input$chapter,
          paste(input$chapters,collapse=' ') 
          )
        ),
      stringsAsFactors=FALSE )
  } )
  
  output$values<-renderTable({
    sliderValues()
  })
})