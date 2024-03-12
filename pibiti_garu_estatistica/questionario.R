library(shinyalert)
questionario <-
  
  tabPanel('Questionário',
           fluidPage(
             titlePanel('Questionário'),
             sidebarLayout(
               sidebarPanel(
                 uiOutput('pergunta'),
                 uiOutput('opcoes_resposta'),
                 useShinyjs(),
                 actionButton('confirmar_resposta','Verificar'),
                 textOutput('resultado')
               ),
               mainPanel(
                 gt_output('score')
                 
               )
             )
           )
  )
