####################SERVER########################

# Define server logic
server <- function(input, output, session) {
  
  ####plotando os gráficos de morte####
  output$MORTES_REG_GRAF <- renderPlotly(Mortes_graf_reg)
  output$MORTES_NORTE_GRAF <- renderPlotly(Mortes_graf_uf_norte)
  output$MORTES_NORDESTE_GRAF <- renderPlotly(Mortes_graf_uf_nordeste)
  output$MORTES_SUL_GRAF <- renderPlotly(Mortes_graf_uf_sul)
  output$MORTES_SUDESTE_GRAF <- renderPlotly(Mortes_graf_uf_sudeste)
  output$MORTES_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_graf_uf_centro_oeste)
  ####plotando os gráficos de morte PAF####
  output$MORTES_REG_GRAF_PAF <- renderPlotly(Mortes_graf_reg_PAF)
  output$MORTES_NORTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_norte)
  output$MORTES_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_nordeste)
  output$MORTES_SUL_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_sul)
  output$MORTES_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_sudeste)
  output$MORTES_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_centro_oeste)
  
  ####plotando os gráficos de homicidios####
  output$HOMICIDIOS_REG_GRAF <- renderPlotly(Mortes_Homicidios_graf_reg)
  output$HOMICIDIOS_NORTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_norte)
  output$HOMICIDIOS_NORDESTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_nordeste)
  output$HOMICIDIOS_SUL_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_sul)
  output$HOMICIDIOS_SUDESTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_sudeste)
  output$HOMICIDIOS_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_centro_oeste)
  ####plotando os gráficos de homicidios PAF####
  output$HOMICIDIOS_REG_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_reg_PAF)
  output$HOMICIDIOS_NORTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_norte)
  output$HOMICIDIOS_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_nordeste)
  output$HOMICIDIOS_SUL_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_sul)
  output$HOMICIDIOS_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_sudeste)
  output$HOMICIDIOS_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_centro_oeste)
  
  ####plotando os gráficos de Suicidio####
  output$SUICIDIOS_REG_GRAF <- renderPlotly(Mortes_Suicidio_graf_reg)
  output$SUICIDIOS_NORTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_norte)
  output$SUICIDIOS_NORDESTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_nordeste)
  output$SUICIDIOS_SUL_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_sul)
  output$SUICIDIOS_SUDESTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_sudeste)
  output$SUICIDIOS_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_centro_oeste)
  ####plotando os gráficos de Suicidio PAF####
  output$SUICIDIOS_REG_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_reg_PAF)
  output$SUICIDIOS_NORTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_norte)
  output$SUICIDIOS_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_nordeste)
  output$SUICIDIOS_SUL_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_sul)
  output$SUICIDIOS_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_sudeste)
  output$SUICIDIOS_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_centro_oeste)

  ####plotando os gráficos de Acidental####
  output$ACIDENTES_REG_GRAF <- renderPlotly(Mortes_Acidental_graf_reg)
  output$ACIDENTES_NORTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_norte)
  output$ACIDENTES_NORDESTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_nordeste)
  output$ACIDENTES_SUL_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_sul)
  output$ACIDENTES_SUDESTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_sudeste)
  output$ACIDENTES_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_centro_oeste)
  ####plotando os gráficos de Acidental PAF####
  output$ACIDENTES_REG_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_reg_PAF)
  output$ACIDENTES_NORTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_norte)
  output$ACIDENTES_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_nordeste)
  output$ACIDENTES_SUL_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_sul)
  output$ACIDENTES_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_sudeste)
  output$ACIDENTES_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_centro_oeste)
  
  
  
}
