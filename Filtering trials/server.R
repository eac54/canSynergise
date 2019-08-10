trials<-read.csv("cansynergise_trials_mini.csv")
trials<-trials[,-5:-7]
trials<-trials[,-8:-10]
trials<-trials[,-12]
trials<-trials[,-13:-29]
uniquetrialsdrugs<-c(as.character(trials$Drug_1), as.character(trials$Drug_2))
uniquetrialsdrugs<-unique(uniquetrialsdrugs)
uniquetrialsdrugs<-sort(uniquetrialsdrugs)
trials$Disease<-as.character(trials$Disease)
trialsdiseases<-unlist(strsplit(trials$Disease, ";"))
trialsdiseases<-unique(trialsdiseases)
trialsdiseases<-sort(trialsdiseases)
trials$Drug_1_target_uniprots<-as.character(trials$Drug_1_target_uniprots)
trials$Drug_2_target_uniprots<-as.character(trials$Drug_2_target_uniprots)
a<-unlist(strsplit(trials$Drug_1_target_uniprots, ";"))
b<-unlist(strsplit(trials$Drug_2_target_uniprots, ";"))
trialstargets<-c(a,b)
trialstargets<-unique(trialstargets)
trialstargets<-sort(trialstargets)


library(shiny)

library(ggplot2)

function(input, output, session) {
  
  
  updateSelectInput(session,"sou", choices=c("All", unique(as.character(trials$Trial.source))))
  updateSelectInput(session,"tdis", choices=c("All", trialsdiseases))
  updateSelectInput(session,"pha", choices=c("All", unique(as.character(trials$Phase))))
  updateSelectInput(session,"drug", choices=c("All", uniquetrialsdrugs))
  updateSelectInput(session,"target", choices=c("All", trialstargets))
  
  
  
  output$table <- DT::renderDataTable(DT::datatable({
    data <- trials
    if (input$sou != "All") {
      data <- data[data$Trial.source == input$sou,]
    }
    if (input$tdis != "All") {
      data <- data[grep(input$tdis, trials$Disease), ]
    }
    if (input$pha != "All") {
      data <- data[data$Phase == input$pha,]
    }
    if (input$drug != "All") {
      a <- data[data$Drug_1 == input$drug,]
      b <-data[data$Drug_2 == input$drug,]
      data<-rbind(a,b)
    }
    if (input$target != "All") {
      a <- data[grep(input$target, trials$Drug_1_target_uniprots), ]
      b <- data[grep(input$target, trials$Drug_2_target_uniprots), ]
      data<-rbind(a,b)
    }
    data
    
  }) )
  
  # Downloadable csv of selected dataset ----
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("canSynergise_trials_filtered_results", ".csv", sep = "")
    },
    content = function(file) {
      write.csv(data, file, row.names = FALSE)
    }
  )
}