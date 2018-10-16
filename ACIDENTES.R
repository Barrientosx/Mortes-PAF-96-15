#######ACIDENTES###########
####MORTES ACIDENTAIS GERAIS
Mortes_Acidental <- read.csv2("Mortes_Acidental_UF.csv")
Mortes_Acidental$ESTADOS <- estados
Mortes_Acidental$UF <- str_trim(Mortes_Acidental$UF)
Mortes_Acidental$REGIAO <- str_trim(Mortes_Acidental$REGIAO)

####MORTES ACIDENTAIS PAF
Mortes_Acidental_PAF <- read.csv2("Mortes_Arma_Fogo_Acidental_UF.csv")
Mortes_Acidental_PAF$ESTADOS <- estados
Mortes_Acidental_PAF$UF <- str_trim(Mortes_Acidental_PAF$UF)
Mortes_Acidental_PAF$REGIAO <- str_trim(Mortes_Acidental_PAF$REGIAO)

####melt anos de mortes acidentais
Mortes_Acidental <- melt(Mortes_Acidental, 
                         id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))
Mortes_Acidental_PAF <- melt(Mortes_Acidental_PAF, 
                             id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))

####RENOMEANDO AS COLUNAS 
names(Mortes_Acidental) <- c("ESTADOS", "UF", "COD", "REGIAO", 
                             "COD.REG.", "ANO", "MORTES")
names(Mortes_Acidental_PAF) <- c("ESTADOS", "UF", "COD", "REGIAO",
                                 "COD.REG.", "ANO", "MORTES")

####REMOVENDO OS X DOS ANOS
Mortes_Acidental$ANO <- str_remove(Mortes_Acidental$ANO, "X")
Mortes_Acidental_PAF$ANO <- str_remove(Mortes_Acidental_PAF$ANO, "X")

