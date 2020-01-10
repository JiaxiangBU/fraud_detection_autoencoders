library(tidyverse)
pkg_func <-
    here::here("settings.ini") %>%
    readr::read_lines() %>%
    stringr::str_subset("des") %>%
    str_remove("description = ") %>%
    str_to_lower()
