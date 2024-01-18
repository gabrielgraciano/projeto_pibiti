library(ggplot2)


library(dplyr)
library(tidyverse)
library(shiny)
library(htmltools)
library(imager)
perguntas_respostas <- list(
  
  list(
    pergunta = 'Qual é o conceito de moda?',
    respostas = c('Valor que ocorre com mais frequência em um conjunto de dados',
                  'Soma de todos os valores de um conjunto de dados dividido por n',
                  'Variabilidade dos dados',
                  'Valor que está no centro do conjunto de dados'),
    resposta_correta = 1
  ),
  
  list(
    pergunta = 'Qual o conceito de mediana?',
    respostas = c('O valor que ocorre com mais frequência dentro de um conjunto de dados.',
                  'É a soma de todos os valores de um conjunto de dados dividida pela quantidade de valores n que se está somando.',
                  'É a variabilidade dos dados.',
                  'É o valor que está no centro de um conjunto de dados. (50% abaixo e 50% acima)'),
    resposta_correta = 4
  ),
  
  list(
    pergunta =  HTML('<center><img src="images/boxplot_1.png"></center>'),
    respostas = c('O valor que ocorre com mais frequência dentro de um conjunto de dados.',
                  'É a variabilidade dos dados.',
                  'É o valor que está no centro de um conjunto de dados. (50% abaixo e 50% acima)',
                  'É o valor esperado para uma amostra de um conjunto de dados'),
    resposta_correta = 4
  )
)


