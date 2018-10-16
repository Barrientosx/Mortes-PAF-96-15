#######MORTES###########
####MORTES GERAIS
Mortes <- read.csv2("Mortes_UF.csv")
Mortes$ESTADOS <- estados
Mortes$UF <- str_trim(Mortes$UF)
Mortes$REGIAO <- str_trim(Mortes$REGIAO)

####MORTES PAF
Mortes_PAF <- read.csv2("Mortes_Arma_Fogo_UF.csv")
Mortes_PAF$ESTADOS <- estados
Mortes_PAF$UF <- str_trim(Mortes_PAF$UF)
Mortes_PAF$REGIAO <- str_trim(Mortes_PAF$REGIAO)

####melt anos de mortes 
Mortes <- melt(Mortes,
               id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))
Mortes_PAF <- melt(Mortes_PAF,
                   id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))

####RENOMEANDO AS COLUNAS 
names(Mortes) <- c("ESTADOS", "UF", "COD", "REGIAO",
                   "COD.REG.", "ANO", "MORTES")
names(Mortes_PAF) <- c("ESTADOS", "UF", "COD", "REGIAO",
                       "COD.REG.", "ANO", "MORTES")

####REMOVENDO OS X DOS ANOS
Mortes$ANO <- str_remove(Mortes$ANO, "X")
Mortes_PAF$ANO <- str_remove(Mortes_PAF$ANO, "X")

