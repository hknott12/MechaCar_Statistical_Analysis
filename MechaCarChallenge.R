library(dplyr)
table <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=table)) #generate multiple linear regression summary

coil_table <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
total_summary <- coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

t.test(coil_table$PSI, mu=1500)

lot1 <- coil_table %>% filter(Manufacturing_Lot=="Lot1")
lot2 <- coil_table %>% filter(Manufacturing_Lot=="Lot2")
lot3 <- coil_table %>% filter(Manufacturing_Lot=="Lot3")


t.test(lot1$PSI, mu = 1500)
t.test(lot2$PSI, mu = 1500)
t.test(lot3$PSI, mu = 1500)
