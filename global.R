library(shiny) ; library(tidyverse) ; library(shinydashboard) ; library(sf) ; library(viridis) ; library(ggrepel) ; library(packcircles)

# ggplot2 theme
theme_x <- function () { 
  theme_minimal(base_size = 14, base_family = "Open Sans") %+replace% 
    theme(
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      plot.title = element_text(size = 16, face = "bold", hjust = 0),
      plot.subtitle = element_text(hjust = 0, margin = margin(9, 0, 9, 0)),
      plot.caption = element_text(size = 12, color = "grey50", hjust = 1, margin = margin(t = 15)),
      axis.title = element_text(size = 10, hjust = 1),
      axis.text.x = element_text(angle = 90, hjust = 1, margin = margin(t = 0)),
      legend.position = "top", 
      legend.justification = "left"
    )
}

# Local authority lookup
lookup <- read_csv("data/geospatial/local_authority_codes.csv")

# UK local authority boundaries
la <- st_read("data/geospatial/local_authority.geojson") 

# LSOA boundaries for England and Wales
lsoa <- st_read("data/geospatial/lsoa.geojson")

# Carbon dioxide emissions
co2_emissions <- read_csv("data/co2_emissions.csv") 

# Carbon dioxide emissions from large industrial installations
large_point_sources <- read_csv("data/large_point_sources.csv")

# Non domestic energy consumption
non_domestic_energy_consumption <- read_csv("data/non_domestic_energy_consumption.csv")

# Road transport fuel consumption
road_transport_fuel_consumption <- read_csv("data/road_transport_fuel_consumption.csv")

# Domestic energy consumption
domestic_energy_consumption <- read_csv("data/domestic_energy_consumption.csv") 

# Domestic property build period
domestic_property_build_period <- read_csv("data/domestic_property_build_period.csv")

# Domestic EPC energy efficiency rating
domestic_epcs_energy_efficiency <- read_csv("data/domestic_epcs_energy_efficiency.csv")

# Fuel poverty
fuel_poverty <- read_csv("data/fuel_poverty.csv")

# Background NO2, PM10, PM2.5 concentrations
background_air_pollution <- st_read("data/background_air_pollution.shp") 

# Renewable electricity generation
renewable_electricity_generation <- read_csv("data/renewable_electricity_generation.csv") 

# Onshore wind
onshore_wind <- read_csv("data/onshore_wind.csv") 

# Non-domestic Renewable Heat Incentive
non_domestic_rhi <- read_csv("data/non-domestic_rhi.csv") 

# Domestic Renewable Heat Incentive
domestic_rhi <- read_csv("data/domestic_rhi.csv") 

# Recycling
recycling <- read_csv("data/recycling.csv")

# Licensed ULEVs
ulev <- read_csv("data/ulev.csv") 

# Licensed electric cars and vans
ev <- read_csv("data/ev.csv") 

# Cycling
cycling <- read_csv("data/cycling.csv") 

# Walking
walking <- read_csv("data/walking.csv")

# Green belt
green_belt <- read_csv("data/green_belt.csv")

