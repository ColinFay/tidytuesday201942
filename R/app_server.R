#' @import shiny
app_server <- function(input, output,session) {
  #callModule(mod_raw_server, "raw_ui_1")
  callModule(mod_dataviz_server, "dataviz_ui_1", type = "point")
  callModule(mod_dataviz_server, "dataviz_ui_2", type = "hist")
  callModule(mod_dataviz_server, "dataviz_ui_3", type = "boxplot")
  callModule(mod_dataviz_server, "dataviz_ui_4", type = "barplot")
}
