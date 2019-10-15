# Module UI
  
#' @title   mod_about_ui and mod_about_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_about
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList includeMarkdown
mod_about_ui <- function(id){
  ns <- NS(id)
  tagList(
    col_6(
      includeMarkdown(
        system.file("app/www/about.md", package = "tidytuesday201942")
      )
    ), 
    col_6(
      includeMarkdown(
        system.file("app/www/tech.md", package = "tidytuesday201942")
      )
    )
  )
}
    
# Module Server
    
#' @rdname mod_about
#' @export
#' @keywords internal
    
mod_about_server <- function(input, output, session){
  ns <- session$ns
}
    
## To be copied in the UI
# 
    
## To be copied in the server
# callModule(mod_about_server, "about_ui_1")
 
