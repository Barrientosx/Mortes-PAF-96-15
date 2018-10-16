# Run the application 
##############UI####################
source("LEITURA_SCRIPTS.R")

# NOMEANDO O DASHBOARD
header <- dashboardHeader(title = "Indices")

# CONFIGURANDO A SIDEBAR DO DASHBOARD
sidebar <- dashboardSidebar(
  sidebarMenu(
    ##CONFIGURANDO AS TABS ESPECIFICAS PARA SEGMENTO DE MORTE
    ###TAB DE TODAS AS MORTES OCORRIDAS
    menuItem("MORTES GERAIS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "MORTES_TOTAL",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "MORTES_PAF",
                         icon = icon("allergies"))),
    ###TAB DE MORTES POR HOMICIDIOS
    menuItem("HOMICIDIOS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "HOMICIDIOS",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "HOMICIDIOS_PAF",
                         icon = icon("joint"))),
    ###TAB DE MORTES POR SUICIIDIOS
    menuItem("SUICIDIOS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "SUICIDIOS",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "SUICIDIOS_PAF",
                         icon = icon("joint"))),
    ###TAB DE MORTES POR ACIDENTE
    menuItem("MORTES ACIDENTAIS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "ACIDENTES",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "ACIDENTES_PAF",
                         icon = icon("joint")))
  )
)

# Create an empty body


body <- dashboardBody(
  tabItems(
    ########################MORTES EM GERAL###################
    tabItem("MORTES_TOTAL",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTES", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_CENTRO_OESTE_GRAF"))
                )
              )
            )
    ),
    ################PAF
    tabItem("MORTES_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Mortes PAF por 100 Mil Habitantes",
                       id = "MORTES", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_CENTRO_OESTE_GRAF_PAF"))
                )
              )
            )
    ),
    ########################HOMICIDIOS###################
    tabItem("HOMICIDIOS",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Homicidios por 100 Mil Habitantes",
                       id = "HOMICIDIOS", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_CENTRO_OESTE_GRAF"))
                )
              )
            )
    ),
    ################PAF
    tabItem("HOMICIDIOS_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Homicidios PAF por 100 Mil Habitantes",
                       id = "HOMICIDIOS_PAF", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_CENTRO_OESTE_GRAF_PAF"))
                )
              )
            )
    ),
    ########################SUICIDIOS###################
    tabItem("SUICIDIOS",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Suicidios por 100 Mil Habitantes",
                       id = "SUICIDIOS", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_CENTRO_OESTE_GRAF"))
                )
              )
            )
    ),
    ################PAF
    tabItem("SUICIDIOS_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Suicidios PAF por 100 Mil Habitantes",
                       id = "SUICIDIOS_PAF", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_CENTRO_OESTE_GRAF_PAF"))
                )
              )
            )
    ),
    ########################ACIDENTAIS###################
    tabItem("ACIDENTES",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Mortes Acidentais por 100 Mil Habitantes",
                       id = "ACIDENTES", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_CENTRO_OESTE_GRAF"))
                )
              )
            )
    ),
    ################PAF
    tabItem("ACIDENTES_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Mortes Acidentais PAF por 100 Mil Habitantes",
                       id = "MORTES", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_CENTRO_OESTE_GRAF_PAF"))
                )
              )
            )
    )
  )
)

# Define UI for application
ui <- dashboardPage(header, sidebar, body)

####################SERVER########################

# Define server logic
server <- function(input, output, session) {

  source("LEITURA_SCRIPTS.R")

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


shinyApp(ui = ui, server = server)

