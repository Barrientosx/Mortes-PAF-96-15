# Run the application 
source("LEITURA_SCRIPTS.R")
source("UI.R")
source("SERVER.R")
shinyApp(ui = ui, server = server)

