#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(ggplot2)

navbarPage(
  title = 'canSynergise',
  tabPanel('About', "canSynergise is a curated database of pairwise combinations of targeted anticancer drugs.", br(),br(), "This app can be used to query the datasets, or the entire datasets can be downloaded under the 'Downloads' tab. canSynergise data is also available via",a("canSAR", href="https://cansarblack.icr.ac.uk/", target="_blank"), ".", br(), br(), "Please cite canSynergise as follows: xxxx",br(),br(),"canSynergise is supported by:",br(),br(),img(src = "cruk_new_logo.jpg", height = 183, width = 275)),
  tabPanel('Cell lines',     DT::dataTableOutput('ex1')),
  tabPanel('Trials',        DT::dataTableOutput('ex2')),
  tabPanel('Downloads', "Complete canSynergise datasets are available for download here.", br(), h3("canSynergise cell lines"),br(), a("201908_canSynergise cell lines", href="https://cansarblack.icr.ac.uk/", target="_blank"), br(), a("201908_canSynergise cell line read me", href="https://cansarblack.icr.ac.uk/", target="_blank"), br(), h3("canSynergise trials"), br(), a("201908_canSynergise trials", href="https://cansarblack.icr.ac.uk/", target="_blank"), br(), a("201908_canSynergise trials read me", href="https://cansarblack.icr.ac.uk/", target="_blank"), br(), h3("Past versions")),
  fluid=TRUE
)

