
fluidPage(
  titlePanel("canSynergise Trials"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("sou",
                       "Trial source:",
                       c("All"))
    ),
    column(4,
           selectInput("tdis",
                       "Disease:",
                       c("All"))
    ),
    column(4,
           selectInput("drug",
                       "Drug:",
                       c("All"))
    ),
    column(4,
           selectInput("target",
                       "Target uniprot:",
                       c("All"))
  ),
    column(4,
           selectInput("pha",
                       "Phase:",
                       c("All"))
    ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
)
)