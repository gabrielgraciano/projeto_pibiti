library(shiny)

source("data_handling.R")
source("inicio.R")
source("tipos_variaveis.R")
source("tabela_frequencias.R")
source("medidas_resumo.R")
source("graficos.R")
source("prob.R")
source("distr_prob.R")
source("prob_cond.R")
source("inferencia.R")
source("geometry.R")
source('print_glossario.R')
source('questionario.R')
source('perguntas_pibiti.R')

navbarPage("GARU", id = "mainNav",
           tabPanel("Início", inicio ,icon = icon("home", lib = "font-awesome")),
           navbarMenu("Descritiva",
                      tabPanel("Tipos de Variáveis",
                               tipos_variaveis, value="tabTiposVariaveis"),
                      tabPanel("Tabela de Frequências",
                               tabela_frequencias, value="tabTabFreqs"),
                      tabPanel("Medidas Resumo",
                               medidas_resumo, value="tabMedidasResumo"),
                      icon = icon("table", lib = "font-awesome")),
           navbarMenu("Gráficos",
                      tabPanel("Variáveis Qualitativas",
                               graf_qualitativa, value = "tabGrafQual"),
                      tabPanel("Variáveis Quantitativas",
                               graf_quantitativa, value = "tabGrafQuant"),
                      tabPanel("Gráficos Bidimensionais", graf_bidimensional, value = "tabGrafBi"),
                      icon = icon("pie-chart", lib="font-awesome")), 
           navbarMenu("Probabilidade",
                      tabPanel("Definição de Probabilidade",
                               def_prob, value= "tabDefProb"),
                      tabPanel("Probabilidade Condicional",
                               prob_cond, value="tabProbCond"),
                      tabPanel("Distribuições de Probabilidade", 
                               distr_prob, value="tabDistrProb"),
                      icon = icon("percent", lib="font-awesome")),
           navbarMenu("Inferência",
                      tabPanel("Teste T para uma amostra", teste_t_1, value = "tabTesteT1"), 
                      tabPanel("Teste T para duas amostras (dep.)", teste_t_2, value = "tabTesteT2"),
                      tabPanel("Teste qui quadrado", teste_qui, value="tabTesteQui"),
                      tabPanel("Teste de Correlação", teste_corr, value = "tabTesteCor r"),
                      icon = icon("area-chart", lib="font-awesome")),
           navbarMenu("Glossário",
                      tabPanel('Glossário', glossario, value = 'tabGlossario'),
                      icon = icon('font', lib='font-awesome')),
           navbarMenu('Exercícios',
                      tabPanel('Questionário', questionario, value = 'tabQuestionario'),
                      icon = icon('pencil', lib='font-awesome')),
)
           



#tabPanel('Glossário', glossario, value = 'tabGlossario'),
