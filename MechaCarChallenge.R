install.packages("tidyverse")
library(dplyr)

# Read csv file.
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Write linear regression function.
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)
 
#Summarize linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) 

# Read csv file.
coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Summarize() function to get the mean, median, variance, and standard deviation
total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI) ,SD=sd(PSI))

# summarize() functions to group each manufacturing lot
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI) ,SD=sd(PSI), .groups = 'keep')

# Write t.test() function for PSI
t.test(coil_table$PSI,mu=1500)

# Write t.test() function for PSI fot Lot1
t.test(subset(coil_table, Manufacturing_Lot=="Lot1")$PSI,mu=1500)

# Write t.test() function for PSI fot Lot2
t.test(subset(coil_table, Manufacturing_Lot=="Lot2")$PSI,mu=1500)

# Write t.test() function for PSI fot Lot3
t.test(subset(coil_table, Manufacturing_Lot=="Lot3")$PSI,mu=1500)

