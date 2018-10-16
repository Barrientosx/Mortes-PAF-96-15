#######homicidios###########
####MORTES ACIDENTAIS GERAIS
Mortes_Homicidios <- read.csv2("Mortes_Homicidios_UF.csv")
Mortes_Homicidios$ESTADOS <- estados
Mortes_Homicidios$UF <- str_trim(Mortes_Homicidios$UF)
Mortes_Homicidios$REGIAO <- str_trim(Mortes_Homicidios$REGIAO)

####MORTES ACIDENTAIS PAF
Mortes_Homicidios_PAF <- read.csv2("Mortes_Arma_Fogo_Homicidios_UF.csv")
Mortes_Homicidios_PAF$ESTADOS <- estados
Mortes_Homicidios_PAF$UF <- str_trim(Mortes_Homicidios_PAF$UF)
Mortes_Homicidios_PAF$REGIAO <- str_trim(Mortes_Homicidios_PAF$REGIAO)

####melt anos de mortes acidentais
Mortes_Homicidios <- melt(Mortes_Homicidios, 
                         id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))
Mortes_Homicidios_PAF <- melt(Mortes_Homicidios_PAF, 
                             id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))

####RENOMEANDO AS COLUNAS 
names(Mortes_Homicidios) <- c("ESTADOS", "UF", "COD", "REGIAO", 
                             "COD.REG.", "ANO", "MORTES")
names(Mortes_Homicidios_PAF) <- c("ESTADOS", "UF", "COD", "REGIAO",
                                 "COD.REG.", "ANO", "MORTES")

####REMOVENDO OS X DOS ANOS
Mortes_Homicidios$ANO <- str_remove(Mortes_Homicidios$ANO, "X")
Mortes_Homicidios_PAF$ANO <- str_remove(Mortes_Homicidios_PAF$ANO, "X")


