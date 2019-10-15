# Module UI
  
#' @title   mod_raw_ui and mod_raw_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_raw
#'
#' @keywords internal
#' @export 
#' @importFrom shiny NS tagList includeMarkdown
mod_raw_ui <- function(id){
  ns <- NS(id)
  tagList(
    includeMarkdown(
      system.file("app/www/home.md", package = "tidytuesday201942")
    )
  )
}
    
# Module Server
    
#' @rdname mod_raw
#' @export
#' @keywords internal
    
mod_raw_server <- function(input, output, session){
  ns <- session$ns
}
    

