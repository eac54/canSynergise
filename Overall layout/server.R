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


celllines<-read.csv("cansynergise_cellines_mini.csv")
celllines<-celllines[,-4:-6]
celllines<-celllines[,-9:-11]
uniquedrugs<-c(as.character(celllines$Drug_1), as.character(celllines$Drug_2))
uniquedrugs<-unique(uniquedrugs)
uniquedrugs<-sort(uniquedrugs)
celllines$Disease<-as.character(celllines$Disease)
diseases<-unlist(strsplit(celllines$Disease, ";"))
diseases<-unique(diseases)
diseases<-sort(diseases)
celllines$Drug_1_target_uniprots<-as.character(celllines$Drug_1_target_uniprots)
celllines$Drug_2_target_uniprots<-as.character(celllines$Drug_2_target_uniprots)
a<-unlist(strsplit(celllines$Drug_1_target_uniprots, ";"))
b<-unlist(strsplit(celllines$Drug_2_target_uniprots, ";"))
targets<-c(a,b)
targets<-unique(targets)
targets<-sort(targets)

library(shiny)

library(ggplot2)

function(input, output) {
  
  # display 10 rows initially
  output$ex1 <- DT::renderDataTable(
    DT::datatable(celllines, options = list(pageLength = 25))
  )

  # display 10 rows initially
  output$ex2 <- DT::renderDataTable(
    DT::datatable(trials, options = list(pageLength = 25))
  )
  }