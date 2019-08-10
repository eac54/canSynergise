#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

trials<-read.csv("cansynergise_trials_mini.csv")
trials<-trials[,-5:-7]
trials<-trials[,-8:-10]
trials<-trials[,-12]
trials<-trials[,-13:-29]


#Load data
celllines<-read.csv("cansynergise_cellines_mini.csv")
#Remove columns with chemical information
celllines<-celllines[,-4:-6]
celllines<-celllines[,-9:-11]
#Get list of drugs present in dataset
uniquedrugs<-c(as.character(celllines$Drug_1), as.character(celllines$Drug_2))
uniquedrugs<-unique(uniquedrugs)
uniquedrugs<-sort(uniquedrugs)
#Get list of diseases in dataset
celllines$Disease<-as.character(celllines$Disease)
diseases<-unlist(strsplit(celllines$Disease, ";"))
diseases<-unique(diseases)
diseases<-sort(diseases)
#Get list of targets in dataset
celllines$Drug_1_target_uniprots<-as.character(celllines$Drug_1_target_uniprots)
celllines$Drug_2_target_uniprots<-as.character(celllines$Drug_2_target_uniprots)
a<-unlist(strsplit(celllines$Drug_1_target_uniprots, ";"))
b<-unlist(strsplit(celllines$Drug_2_target_uniprots, ";"))
targets<-c(a,b)
targets<-unique(targets)
targets<-sort(targets)
#Get list of cell lines in dataset
uniquecls<-unique(as.character(celllines$Cell.line))
uniquecls<-sort(uniquecls)

library(shiny)

library(ggplot2)

function(input, output,session) {
  
  updateSelectInput(session,"int", choices=c("All", unique(as.character(celllines$Interaction))))
  updateSelectInput(session,"cl", choices=c("All", uniquecls))
  updateSelectInput(session,"dis", choices=c("All", diseases))
  updateSelectInput(session,"drug", choices=c("All", uniquedrugs))
  updateSelectInput(session,"target", choices=c("All", targets))
  
  # display 10 rows initially
  output$ex1 <- DT::renderDataTable(
    DT::datatable(celllines, options = list(pageLength = 25))
  
    data <- celllines
    if (input$cl != "All") {
      data <- data[data$Cell.line == input$cl,]
    }
    if (input$dis != "All") {
      data <- data[grep(input$dis, celllines$Disease), ]
    }
    if (input$int != "All") {
      data <- data[data$Interaction == input$int,]
    }
    
    if (input$drug != "All") {
      a <- data[data$Drug_1 == input$drug,]
      b <-data[data$Drug_2 == input$drug,]
      data<-rbind(a,b)
    }
    
    if (input$target != "All") {
      a <- data[grep(input$target, data$Drug_1_target_uniprots), ]
      b <- data[grep(input$target, data$Drug_2_target_uniprots), ]
      data<-rbind(a,b)
    }
    data
    
    )

  # Downloadable csv of selected dataset ----
  output$downloadData <- downloadHandler(
    filename = "canSynergise_celllines_filtered_results.csv",
    content = function(file) {
      write.csv(data(), file, row.names = FALSE)
    }
  )
  
  # display 10 rows initially
  output$ex2 <- DT::renderDataTable(
    DT::datatable(trials, options = list(pageLength = 25))
  )
  }