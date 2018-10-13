####PACOTES
require(tidyverse)
require(plotly)
require(reshape2)
require(shiny)
require(shinydashboard)
require(RColorBrewer)
require(DT)

####primeira letra em maiuscula
simpleCap <- function(x) {
  s <- strsplit(tolower(x), " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
        sep="", collapse=" ")
}

###calculando a taxas por 100 mil habitantes por UF
uf_100mil <- function(UF){
  UF[,c("ESTADOS", "UF", "COD", "ANO", "REGIAO", "MORTES", "POP")] %>% 
    group_by(ESTADOS, UF, COD) %>% 
    mutate(POR100MIL = round((MORTES/POP)*10^5,2),
           CRESC_ANO = c(0,round(diff(POR100MIL,1),2)))
}

###calculando a taxas por 100 mil habitantes por REGIÃO
reg_100mil <- function(reg){
  reg[,c("REGIAO", "COD.REG.", "ANO", "MORTES", "POP")] %>%
    group_by(REGIAO, COD.REG., ANO) %>% 
    summarise(MORTES = sum(MORTES), POP = sum(POP)) %>% 
    mutate(POR100MIL = round((MORTES/POP)*10^5,2), 
           CRESC_ANO = c(0,round(diff(POR100MIL,1),2)))
}

##criação de tabela com crescimento ano a ano 
tabela_cresc <- function(dados){
  if("ESTADOS" %in% names(dados)){
    dcast(dados, ESTADOS+REGIAO ~ ANO)
  }else{
    dcast(dados, REGIAO ~ ANO) 
  }
}

##graficos para a região
graf_reg <- function(banco, titulo, ytitulo){
  banco$ANO <- as.integer(banco$ANO)
  graf <- ggplot(as.data.frame(banco), 
                 aes(x=ANO, y=POR100MIL, group=REGIAO, color=REGIAO))+
    geom_line(aes(linetype = REGIAO))+
    geom_point()+
    geom_vline(xintercept = banco$ANO[banco$ANO=="2003"])+
    scale_colour_manual(values = c("black","#41AB5D", "red",
                                   "#D95F02", "blue", "#4292C6"))+
    scale_linetype_manual(values=c("solid", rep("dashed",5)))+
    scale_x_continuous(limits = c(1996,2015), breaks = seq(1996,2015,1))+
    # ggtitle(paste0("Taxas de ",simpleCap(titulo)," \n1996-2015"))+
    ylab(paste0(simpleCap(ytitulo) ," por 100 mil"))+
    theme(axis.text.x = element_text(angle = 45, vjust = 0.8))
  
  ggplotly(graf)
}

##graficos para os estados de cada região
graf_uf <- function(banco, regiao, titulo, ytitulo){
  banco$ANO <- as.integer(banco$ANO)
  banco <- banco[banco$REGIAO %in% c("BRASIL", toupper(regiao)),]
  banco$ESTADOS <- factor(banco$ESTADOS, ordered = TRUE,
                          levels = c("BRASIL",
                                     sort(unique(banco$ESTADOS[banco$ESTADOS!="BRASIL"]))))
  
  cols <- brewer.pal((length(unique(banco$ESTADOS))-1), "Set1")
  graf <- ggplot(as.data.frame(banco), 
                 aes(x=ANO, y=POR100MIL, group=ESTADOS, color=ESTADOS))+
    geom_line(aes(linetype = ESTADOS))+
    geom_point()+
    geom_vline(xintercept = banco$ANO[banco$ANO=="2003"])+
    scale_colour_manual(values = c("black",cols))+
    scale_linetype_manual(values=c("solid", 
                                   rep("dashed",length(unique(banco$ESTADOS))-1)))+
    scale_x_continuous(limits = c(1996,2015), breaks = seq(1996,2015,1))+
    # ggtitle(paste0("Taxas de ",simpleCap(titulo)," \n1996-2015"))+
    ylab(paste0(simpleCap(ytitulo) ," por 100 mil"))+
    theme(axis.text.x = element_text(angle = 45, vjust = 0.8))
  
  ggplotly(graf)
}

