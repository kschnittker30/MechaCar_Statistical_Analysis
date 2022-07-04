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




