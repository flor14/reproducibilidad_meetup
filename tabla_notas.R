library(dplyr)
library(kableExtra)
library(knitr)
library(tibble)
library(stringr)


notas <- read.csv("notas_mat_2015.csv")

tabla <- notas %>% mutate(nombre_completo = str_c(nombre," ", apellido),
                 nombre_abr = abbreviate(nombre_completo),
                 año = 2015,
                 materia = "mat") %>%
  select(-nombre, -apellido, -X) %>%
  relocate(nota_final, .after = materia)



kableExtra::kable_styling(knitr::kable(tabla, align = "l"),
                          bootstrap_options = "condensed",
                          font_size = 15,
                          position = "center")

