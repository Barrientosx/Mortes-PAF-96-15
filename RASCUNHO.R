tabPanel("Frequência", 
         "Quantidade de Clientes Por Frequência de Compra",
         DTOutput("DIGITAL_FREQ")))



##########################SERVER

###########################################DATATABLE DAS BASES ATIVAS###########################################
##DIGITAL
output$DIGITAL_BASES <- renderDataTable(datatable(DIGITAL_DF_BASES, 
                                                  colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 
                                                               'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                  rownames = FALSE,
                                                  options = list(lengthChange = FALSE, paging = FALSE))) 
##VAREJO
output$VAREJO_BASES <- renderDataTable(datatable(VAREJO_DF_BASES, 
                                                 colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 
                                                              'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                 rownames = FALSE,
                                                 options = list(lengthChange = FALSE, paging = FALSE)))
##GLOBAL
output$GLOBAL_BASES <- renderDataTable(datatable(GLOBAL_DF_BASES, 
                                                 colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 
                                                              'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                 rownames = FALSE,
                                                 options = list(lengthChange = FALSE, paging = FALSE)))

###########################################FREQUENCIA DOS CLIENTES###########################################
####DIGITAL
output$DIGITAL_FREQ <- renderDataTable(datatable(tabela_DIGITAL,
                                                 #colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                 rownames = FALSE,
                                                 options = list(lengthChange = FALSE, paging = FALSE)))
output$DIGITAL_FREQ_graf <- renderPlot(GRAF_DIGITAL)

####VAREJO
output$VAREJO_FREQ <- renderDataTable(datatable(tabela_VAREJO, 
                                                #colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                rownames = FALSE,
                                                options = list(lengthChange = FALSE, paging = FALSE)))
output$VAREJO_FREQ_graf <- renderPlot(GRAF_VAREJO)

####GLOBAL
output$GLOBAL_FREQ <- renderDataTable(datatable(tabela_GLOBAL, 
                                                #colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                rownames = FALSE,
                                                options = list(lengthChange = FALSE, paging = FALSE)))
output$GLOBAL_FREQ_graf <- renderPlot(GRAF_GLOBAL)

###########################################CHURN DOS CLIENTES###########################################
####DIGITAL
output$DIGITAL_CHURN <- renderDataTable(datatable(tabela_CHURN_DIGITAL, 
                                                  #colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                  rownames = FALSE,
                                                  options = list(lengthChange = FALSE, paging = FALSE)))
output$DIGITAL_CHURN_graf <- renderPlot(GRAF_CHURN_DIGITAL)

####VAREJO
output$VAREJO_CHURN <- renderDataTable(datatable(tabela_CHURN_VAREJO,
                                                 #colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                 rownames = FALSE,
                                                 options = list(lengthChange = FALSE, paging = FALSE)))
output$VAREJO_CHURN_graf <- renderPlot(GRAF_CHURN_VAREJO)

####GLOBAL
output$GLOBAL_CHURN <- renderDataTable(datatable(tabela_CHURN_GLOBAL,
                                                 #colnames = c('GRIFFES', 'BASE ATIVA ATUAL', 'BASE ATIVA ANTERIOR', 'DELTA BASE ATIVA'),
                                                 rownames = FALSE,
                                                 options = list(lengthChange = FALSE, paging = FALSE)))
output$GLOBAL_CHURN_graf <- renderPlot(GRAF_CHURN_GLOBAL)

###########################################TRÁFEGO DE CLIENTES POR GRIFFES###########################################
output$TRAFRSV <- renderValueBox({
  valueBox(
    value = format(trafego_tot$RESERVA[13], big.mark=".", decimal.mark = ","),
    subtitle = "TRÁFEGO RESERVA(SESSÕES)",
    icon = icon("eye"),
    color = if (trafego_tot$RESERVA[13] < trafego_tot$RESERVA[1]) "red" else "aqua"
  )
})
output$TRAFMINI <- renderValueBox({
  valueBox(
    value = format(trafego_tot$MINI[13], big.mark=".", decimal.mark = ","),
    subtitle = "TRÁFEGO MINI(SESSÕES)",
    icon = icon("eye"),
    color = if (trafego_tot$MINI[13] < trafego_tot$MINI[1]) "red" else "aqua"
  )
})
output$TRAFOFICINA <- renderValueBox({
  valueBox(
    value = format(trafego_tot$OFICINA[13], big.mark=".", decimal.mark = ","),
    subtitle = "TRÁFEGO OFICINA(SESSÕES)",
    icon = icon("eye"),
    color = if (trafego_tot$OFICINA[13] < trafego_tot$OFICINA[1]) "red" else "aqua"
  )
})
output$TRAFAHLMA <- renderValueBox({
  valueBox(
    value = format(trafego_tot$AHLMA[13], big.mark=".", decimal.mark = ","),
    subtitle = "TRÁFEGO AHLMA(SESSÕES)",
    icon = icon("eye"),
    color = if (trafego_tot$AHLMA[13] < trafego_tot$AHLMA[1]) "red" else "aqua"
  )
})
output$TRAF_table <- renderDataTable(datatable(trafego_tot,
                                               # colnames = c('ANO', 'MÊS', 'RESERVA', 'MINI', 'OFICINA', 'AHLMA'),
                                               rownames = FALSE,
                                               options = list(lengthChange = FALSE, paging = FALSE)))
output$RESERVA_TRAF_graf <- renderPlot(g_reserva)
output$MINI_TRAF_graf <- renderPlot(g_mini)
output$OFICINA_TRAF_graf <- renderPlot(g_oficina)
output$AHLMA_TRAF_graf <- renderPlot(g_ahlma)

###########################################VALORES DO CRESC. BASE###########################################
####DIGITAL####
output$DRSV <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_RSV*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA(%)",
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_RSV < 0) "red" else "aqua"
  )
})

output$DMINI <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_MINI*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = tags$p("MINI(%)", style= "position"),
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_MINI < 0) "red" else "aqua"
  )
})

output$DOFICINA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_OFICINA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "OFICINA(%)",
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_OFICINA < 0) "red" else "aqua"
  )
})

output$DAHLMA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_AHLMA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "AHLMA(%)",
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_AHLMA < 0) "red" else "aqua"
  )
})

output$DRO <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_RSV_OFICINA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA(%)",
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_RSV_OFICINA < 0) "red" else "aqua"
  )
})

output$DROM <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_RSV_OFICINA_MINI*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA+MINI(%)",
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_RSV_OFICINA_MINI < 0) "red" else "aqua"
  )
})

output$DROMA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_DIGITAL_RSV_OFICINA_MINI_AHLMA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA+MINI+AHLMA(%)",
    icon = icon("users"),
    color = if (cresc_base_DIGITAL_RSV_OFICINA_MINI_AHLMA < 0) "red" else "aqua"
  )
})

###VALORES DO CRESC. BASE####
####VAREJO####
output$VRSV <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_RSV*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    #value = cresc_base_VAREJO_RSV,
    subtitle = "RESERVA(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_RSV < 0) "red" else "aqua"
  )
})

output$VMINI <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_MINI*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    #value = cresc_base_VAREJO_MINI,
    subtitle = "MINI(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_MINI < 0) "red" else "aqua"
  )
})

output$VOFICINA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_OFICINA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    #value = cresc_base_VAREJO_OFICINA,
    subtitle = "OFICINA(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_OFICINA < 0) "red" else "aqua"
  )
})

output$VAHLMA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_AHLMA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    #value = cresc_base_VAREJO_AHLMA,
    subtitle = "AHLMA(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_AHLMA < 0) "red" else "aqua"
  )
})

output$VRO <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_RSV_OFICINA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_RSV_OFICINA < 0) "red" else "aqua"
  )
})

output$VROM <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_RSV_OFICINA_MINI*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA+MINI(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_RSV_OFICINA_MINI < 0) "red" else "aqua"
  )
})

output$VROMA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_VAREJO_RSV_OFICINA_MINI_AHLMA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA+MINI+AHLMA(%)",
    icon = icon("users"),
    color = if (cresc_base_VAREJO_RSV_OFICINA_MINI_AHLMA < 0) "red" else "aqua"
  )
})

####VALORES DO CRESC. BASE####
####GLOBAL####
output$GRSV <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_RSV*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_RSV < 0) "red" else "aqua"
  )
})

output$GMINI <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_MINI*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "MINI(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_MINI < 0) "red" else "aqua"
  )
})

output$GOFICINA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_OFICINA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "OFICINA(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_OFICINA < 0) "red" else "aqua"
  )
})

output$GAHLMA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_AHLMA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "AHLMA(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_AHLMA < 0) "red" else "aqua"
  )
})

output$GRO <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_RSV_OFICINA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_RSV_OFICINA < 0) "red" else "aqua"
  )
})

output$GROM <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_RSV_OFICINA_MINI*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA+MINI(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_RSV_OFICINA_MINI < 0) "red" else "aqua"
  )
})

output$GROMA <- renderValueBox({
  valueBox(
    value = paste0(format(round(cresc_base_GLOBAL_RSV_OFICINA_MINI_AHLMA*100,1), 
                          nsmall = 1,big.mark=".", decimal.mark = ","),"%"),
    subtitle = "RESERVA+OFICINA+MINI+AHLMA(%)",
    icon = icon("users"),
    color = if (cresc_base_GLOBAL_RSV_OFICINA_MINI_AHLMA < 0) "red" else "aqua"
  )
})

####VALORES DO LTV#########
####DIGITAL####
output$DRSVLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_RSV*freq_media_atual_DIGITAL_RSV/churn_DIGITAL_RSV*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA(R$)",
    icon = icon("dollar")
  )
})

output$DMINILTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_MINI*freq_media_atual_DIGITAL_MINI/churn_DIGITAL_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "MINI(R$)",
    icon = icon("dollar")
  )
})

output$DOFICINALTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_OFICINA*freq_media_atual_DIGITAL_OFICINA/churn_DIGITAL_OFICINA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "OFICINA(R$)",
    icon = icon("dollar")
  )
})

output$DAHLMALTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_AHLMA*freq_media_atual_DIGITAL_AHLMA/churn_DIGITAL_AHLMA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "AHLMA(R$)",
    icon = icon("dollar")
  )
})

output$DRMLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_RSV_MINI*freq_media_atual_DIGITAL_RSV_MINI/churn_DIGITAL_RSV_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+MINI(R$)",
    icon = icon("dollar")
  )
})

output$DROLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_RSV_OFICINA*freq_media_atual_DIGITAL_RSV_OFICINA/churn_DIGITAL_RSV_OFICINA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+OFICINA(R$)",
    icon = icon("dollar")
  )
})

output$DROMLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_DIGITAL_RSV_OFICINA_MINI*freq_media_atual_DIGITAL_RSV_OFICINA_MINI/churn_DIGITAL_RSV_OFICINA_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+OFICINA+MINI(R$)",
    icon = icon("dollar")
  )
})

####VALORES DO LTV#########
####VAREJO####
output$VRSVLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_RSV*freq_media_atual_VAREJO_RSV/churn_VAREJO_RSV*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA(R$)",
    icon = icon("dollar")
  )
})

output$VMINILTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_MINI*freq_media_atual_VAREJO_MINI/churn_VAREJO_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "MINI(R$)",
    icon = icon("dollar")
  )
})

output$VOFICINALTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_OFICINA*freq_media_atual_VAREJO_OFICINA/churn_VAREJO_OFICINA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "OFICINA(R$)",
    icon = icon("dollar")
  )
})

output$VAHLMALTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_AHLMA*freq_media_atual_VAREJO_AHLMA/churn_VAREJO_AHLMA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "AHLMA(R$)",
    icon = icon("dollar")
  )
})

output$VRMLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_RSV_MINI*freq_media_atual_VAREJO_RSV_MINI/churn_VAREJO_RSV_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+MINI(R$)",
    icon = icon("dollar")
  )
})

output$VROLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_RSV_OFICINA*freq_media_atual_VAREJO_RSV_OFICINA/churn_VAREJO_RSV_OFICINA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+OFICINA(R$)",
    icon = icon("dollar")
  )
})

output$VROMLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_VAREJO_RSV_OFICINA_MINI*freq_media_atual_VAREJO_RSV_OFICINA_MINI/churn_VAREJO_RSV_OFICINA_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+OFICINA+MINI(R$)",
    icon = icon("dollar")
  )
})

####VALORES DO LTV#########
####GLOBAL####
output$GRSVLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_RSV*freq_media_atual_GLOBAL_RSV/churn_GLOBAL_RSV*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA(R$)",
    icon = icon("dollar")
  )
})

output$GMINILTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_MINI*freq_media_atual_GLOBAL_MINI/churn_GLOBAL_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "MINI(R$)",
    icon = icon("dollar")
  )
})

output$GOFICINALTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_OFICINA*freq_media_atual_GLOBAL_OFICINA/churn_GLOBAL_OFICINA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "OFICINA(R$)",
    icon = icon("dollar")
  )
})

output$GAHLMALTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_AHLMA*freq_media_atual_GLOBAL_AHLMA/churn_GLOBAL_AHLMA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "AHLMA(R$)",
    icon = icon("dollar")
  )
})

output$GRMLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_RSV_MINI*freq_media_atual_GLOBAL_RSV_MINI/churn_GLOBAL_RSV_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+MINI(R$)",
    icon = icon("dollar")
  )
})

output$GROLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_RSV_OFICINA*freq_media_atual_GLOBAL_RSV_OFICINA/churn_GLOBAL_RSV_OFICINA*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+OFICINA(R$)",
    icon = icon("dollar")
  )
})

output$GROMLTV <- renderValueBox({
  valueBox(
    value = paste0("R$ ",format(round(tm_GLOBAL_RSV_OFICINA_MINI*freq_media_atual_GLOBAL_RSV_OFICINA_MINI/churn_GLOBAL_RSV_OFICINA_MINI*.3),
                                nsmall = 0,big.mark=".", decimal.mark = ",")),
    subtitle = "RESERVA+OFICINA+MINI(R$)",
    icon = icon("dollar")
  )
})