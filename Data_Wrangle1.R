library(tidyverse)
vacc <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus/master/csv/coronavirus.csv')
coronavirus |> 
  filter(type == "death", country %in% c("US", "Canada", "Mexico")) |>
  select(country, date, cases) |> 
  ggplot()
  geom_line(mapping = aes(x=date, y=cases, color = country))

  View(vacc)

# Vaccine Data ------------------------------------------------------------
  vacc <- read_csv("https://raw.githubusercontent.com/RamiKrispin/coronavirus/main/csv/covid19_vaccine.csv")

  max(vacc$date)  
  
vacc |>
    filter(date == max(date)) |>
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population,) |>
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose) |>
  filter(doses_per_vaxxed > 3) |>
  arrange(-doses_per_vaxxed)

vacc |>
  filter(date == max(date)) |>
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |>
  mutate(percent_dosed = people_at_least_one_dose / population) |>
  filter(percent_dosed > 0.899999) |>
  arrange(-percent_dosed)
# Summarize ---------------------------------------------------------------

  
  