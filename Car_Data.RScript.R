library(dplyr)

## Performance
mechacar_dataframe <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_dataframe)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_dataframe))

## Suspension Coil
suspension_coil_dataframe <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- suspension_coil_dataframe %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- suspension_coil_dataframe %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

## T-Tests on Suspension Coils

?t.test()


Lot1 <- suspension_coil_dataframe %>% filter(Manufacturing_Lot=='Lot1') 
Lot2 <- suspension_coil_dataframe %>% filter(Manufacturing_Lot=='Lot2')
Lot3 <- suspension_coil_dataframe %>% filter(Manufacturing_Lot=='Lot3')
                                                                        
t.test((Lot1$PSI),mu=mean(suspension_coil_dataframe$PSI))
t.test((Lot2$PSI),mu=mean(suspension_coil_dataframe$PSI))
t.test((Lot3$PSI),mu=mean(suspension_coil_dataframe$PSI))



