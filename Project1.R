load("Bikesharing_dataset.Rdata")
str(series)
X=series$`Gland, Les Tuillières`

library(dplyr)
library(tidyverse)
select.list(all_data, starts_with("Gland"))
rlang::last_error()
rlang::last_trace()

all_data %>% magrittr::extract2("Gland, Les Tuillières")
all_data%>% purrr::pluck("Gland")

