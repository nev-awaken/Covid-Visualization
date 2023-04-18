# Covid-Visualization
Covid Datasets can be  acquired from:

https://ourworldindata.org/explorers/coronavirus-data-explorer?zoomToSelection=true&time=2020-03-01..latest&facet=none&pickerSort=asc&pickerMetric=location&Metric=Confirmed+cases&Interval=7-day+rolling+average&Relative+to+Population=true&Color+by+test+positivity=false&country=USA~GBR~CAN~DEU~ITA~IND

World Map with Death Percentage
This project uses R and the ggplot2 and mapdata packages to create a world map with death percentage data. The map is colored according to the death percentage in each region, with green indicating low death percentages and red indicating high death percentages. The data used in this project comes from the covid_death dataset in the coronavirus R package.

Getting Started
To use and reproduce this project, you will need to have R and the ggplot2 and mapdata packages installed. You can install these packages using the following commands in R:


>install.packages("ggplot2")
>
>install.packkges("tidyverse")
>
>install.packages("scales")
>
>install.packges("dplyr")
>
>install.packages("mapdata")

To run the code and create the world map, simply run the R script world_map.R in your R console or RStudio.

Results
The resulting world map shows the death percentage in each region, with green indicating low death percentages and red indicating high death percentages. The map is color-coded using a gradient color scale and includes a legend to help interpret the colors.

World Map with Death Percentage








