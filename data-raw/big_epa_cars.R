## code to prepare `big_epa_cars` dataset goes here

big_epa_cars <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-15/big_epa_cars.csv")


usethis::use_data(big_epa_cars)
