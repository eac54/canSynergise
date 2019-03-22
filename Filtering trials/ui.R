
fluidPage(
  titlePanel("canSynergise Trials"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("sou",
                       "Trial source:",
                       c("All",
                         unique(as.character(trials$Trial.source))))
    ),
    column(4,
           selectInput("tdis",
                       "Disease:",
                       c("All",
                         trialsdiseases))
    ),
    column(4,
           selectInput("drug",
                       "Drug:",
                       c("All",
                         uniquetrialsdrugs))
    ),
    column(4,
           selectInput("target",
                       "Target uniprot:",
                       c("All",
                         trialstargets))
  ),
    column(4,
           selectInput("pha",
                       "Phase:",
                       c("All",
                         unique(as.character(trials$Phase))))
    ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
)
)