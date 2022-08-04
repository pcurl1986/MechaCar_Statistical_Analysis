# add library
library(dplyr)
# import CSV
MechaCar <- read.csv(file='MechaCar_mpg.csv' , check.names=F, stringsAsFactors=F)
# lm function and dataframe 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)
# USE summary() FUNCTION TO DETERMINE p-VALUE & r-SQUARED VALUE; MOD 15.7.2
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))
# VEHICLE LENGTH = 0.0000000508
# GROUND CLEARANCE = 0.0000000521
# p-VALUE = 0.0000000000535 SO WE CAN REJECT THE NULL HYPOTHESIS
# CHALLENGE DELIVERABLE II

# READ CHALLENGE CSV FILE
MechaCar2 <- read.csv(file='Suspension_coil.csv', check.names=F, stringsAsFactors = F)
# CREATE A TOTAL SUMMARY DATAFRAME
total_summary <- MechaCar2 %>% summarize(MEAN=mean(PSI), MEDIAN=(PSI), VARIANCE=var(PSI), SD=sd(PSI))
head(total_summary)

# CREATE A LOT SUMMARY DATAFRAME
lot_summary <- MechaCar2 %>% group_by(Manufacturing_Lot) %>% summarize(MEAN=mean(PSI), MEDIAN=(PSI), VARIANCE=var(PSI), SD=sd(PSI))
head(lot_summary)


# CHALLENGE DELIVERABLE III
# t-TEST FOR ALL MANUFACTURING LOTS
t.test(MechaCar2$PSI, mu=1500)

# t-TEST FOR LOT 1
t.test(subset(MechaCar2, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# t-TEST FOR LOT 2
t.test(subset(MechaCar2, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# t-TEST FOR LOT 3
t.test(subset(MechaCar2, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
