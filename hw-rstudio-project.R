library(magrittr); library(ggplot2)
install.packages(c("magrittr", "ggplot2", "httr", "dplyr"))
source("R/utils.R")

x <- "Rodrigo"

df <- get_freq_nome(x)

df %>% 
  ggplot(aes(x = decada, y = freq)) + 
  geom_point() + 
  geom_line(aes(group = 1)) +
  labs(title = paste("Nascimentos por década", x, sep = " - ")) +
  xlab("Década de nascimento") +
  ylab("Pessoas") +
  ggsave("figures/nomes-decada.pdf")
