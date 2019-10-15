#' @importFrom htmltools tags 
nav_ <- function(name, x){
  tags$nav(
    class="navbar navbar-expand-lg fixed-top ", 
    tags$p(
      name
    ), 
    # For portait mode
    tags$button(
      class="navbar-toggler", 
      type="button",
      `data-toggle`="collapse",
      `data-target`="#menu",
      `aria-controls`="menu",
      `aria-expanded`="false" ,
      `aria-label`="Toggle navigation",
      tags$div(
        class="navbar-toggler-icon", 
        HTML('<img src="https://img.icons8.com/metro/26/000000/menu.png">')
      )
    ),
    tags$div(
      class="collapse navbar-collapse",
      id="menu", 
      tags$ul(
        class="navbar-nav mr-4", 
        tagList(
          purrr::imap(
            x, nav_item
          )
        )
      )
    )
  ) %>% tags$div(class = "plpl")
}

#' @importFrom htmltools tags 
#' @importFrom glue glue 
nav_item <- function(label, id){
  tags$li(
    class="nav-item",
    tags$a(
      class="nav-link", 
      `data-value` = label,
      onclick = glue(
        '$( "a.nav-link" ).removeClass("active");
        $( this ).addClass("active");
        $( ".row" ).hide();
        $( "#{id}" ).show();
        $( "#{id}" ).trigger("show");
        $( "#{id}" ).trigger("shown")'
      ),
      label
    )
  )
}