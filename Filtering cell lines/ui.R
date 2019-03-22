#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(ggplot2)


fluidPage(
    titlePanel("canSynergise Cell Lines"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(4,
             selectInput("int",
                         "Interaction:",
                         c("All",
                           unique(as.character(celllines$Interaction))))
      ),
      
      column(4,
             selectInput("cl",
                         "Interaction:",
                         c("All",
                           unique(as.character(celllines$Cell.line))))
      ),
      
      column(4,
             selectInput("dis",
                         "Disease:",
                         c("All",
                           diseases))
      ),
      column(4,
             selectInput("drug",
                         "Drug:",
                         c("All",
                           uniquedrugs))
      ),
      column(4,
             selectInput("target",
                         "Target uniprot:",
                         c("All",
                           targets))
      ),
      
      # Create a new row for the table.
      DT::dataTableOutput("table")
    )
  )