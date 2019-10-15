#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    tagList(
        nav_(
          "#TidyTuesday 2019-10-15",
          c(
            "raw_data" = "dataset",
            "geom_point" = "geom_point",
            "geom_hist" = "geom_hist",
            "geom_boxplot" = "geom_boxplot",
            "geom_bar" = "geom_bar",
            "about" = "About"
          )
        )
      , 
      tags$div(
        class="container", 
        fluidRow(
          id = "raw_data",  mod_raw_ui("raw_ui_1")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_point", mod_dataviz_ui("dataviz_ui_1", "point")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_hist", mod_dataviz_ui("dataviz_ui_2", "hist")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_boxplot", mod_dataviz_ui("dataviz_ui_3", "boxplot")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "geom_bar", mod_dataviz_ui("dataviz_ui_4", "bar")
        ) %>% tagAppendAttributes(
          style = "display:none"
        ),
        fluidRow(
          id = "about", mod_about_ui("about_ui_1")
        ) %>% tagAppendAttributes(
          style = "display:none"
        )
      )
      
    )
  )
}

#' @import shiny
#' @import golem
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'tidytuesday201942')
  )
  
  tags$head(
    golem::activate_js(),
    golem::favicon(),
    tags$title("TidyTuesday 2019 - 42"),
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    tags$link(
      rel="stylesheet", 
      type="text/css", 
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css",
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T",
      crossorigin="anonymous"
    ), 
    tags$script(
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js",
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM",
      crossorigin="anonymous"
    ), 
    tags$link(
      rel="stylesheet", 
      type="text/css", 
      href="www/custom.css"
    ), 
    tags$script(src="www/script.js")
  )
}
