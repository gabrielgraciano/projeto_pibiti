#testandi trstandi
tags$head(tags$script(HTML('
      var fakeClick = function(tabName) {
        var dropdownList = document.getElementsByTagName("a");
        for (var i = 0; i < dropdownList.length; i++) {
          var link = dropdownList[i];
          if(link.getAttribute("data-value") == tabName) {
            link.click();
          };
        }
      };
    ')))
glossario_tab1 <- read.csv("glossario.csv", stringsAsFactors = FALSE)


glossario <- 
  tabPanel("Glossário",
           fluidPage(
             h2("Glossário"),
             tableOutput('glossario_table'),
             uiOutput("glossario_css")
             
           )
  )
