library(dplyr)

## Performance
mechacar_dataframe <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_dataframe)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_dataframe))