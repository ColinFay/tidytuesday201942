names_that_are <- function(class_is){
  r <- sapply(big_epa_cars, class)
  names(r[ r %in% class_is])
}

#' @importFrom withr with_package
themess <- function(){
  with_package(
    "ggplot2", 
    r <- ls("package:ggplot2", pattern = "^theme_") 
  )
  r[
    !(r %in% c("theme_get", "theme_replace", "theme_set", "theme_test", "theme_update"))
  ]
}
