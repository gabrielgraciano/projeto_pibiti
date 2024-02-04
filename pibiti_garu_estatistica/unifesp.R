unifesp <- 
  tabPanel("Unifesp",
           fluidPage(
             
           )
  )

library(readr)
dados_discentes <- read_csv("data/dados-unifesp-discentes-2023/X2023_unifesp_dados_socioeconomicos.csv")
View(X2023_unifesp_dados_socioeconomicos)

glimpse(dados_discentes)

summary(dados_discentes)
mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode(dados_discentes$quest14)

glimpse(dados_discentes$quest14)

table(dados_discentes$quest14)
table(dados_discentes$descr_curso)

mode(dados_discentes$descr_curso)

