library(shinyalert)
questionario <-
  
  tabPanel('Questionário',
           fluidPage(
             titlePanel('Questionário'),
             mainPanel(
               uiOutput('pergunta'),
               uiOutput('opcoes_resposta'),
               useShinyjs(),
               actionButton('confirmar_resposta', 'Verificar'),
               textOutput('resultado'),
             )
           )
  )


