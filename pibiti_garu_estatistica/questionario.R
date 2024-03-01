library(shinyalert)
questionario <-
  
  tabPanel('Questionário',
           fluidPage(
             titlePanel('Questionário'),
             sidebarLayout(
               sidebarPanel(
                 titlePanel(h3('Exercícios'))
               ),
             mainPanel(
               uiOutput('pergunta'),
               uiOutput('opcoes_resposta'),
               useShinyjs(),
               actionButton('confirmar_resposta', 'Verificar'),
               textOutput('resultado'),
             )
           )
  )
  )



