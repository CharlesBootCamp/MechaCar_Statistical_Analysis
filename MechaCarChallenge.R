# Deliverable 1

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
readMechaCar <- read.csv(file = "C:\\Users\\celas\\Downloads\\MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = readMechaCar)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = readMechaCar))

# Deliverable 2

# Import and read in the Suspension_Coil.csv file as a table.
readSuspension <- read.csv(file = "C:\\Users\\celas\\Downloads\\Suspension_coil.csv", check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- readSuspension %>% summarize(Mean = mean(PSI), Median = (PSI), Variance = var(PSI), SD = sd(PSI)) 
View(total_summary)
# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.
lot_summary <- readSuspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = (PSI), Variance = var(PSI), SD = sd(PSI))
View(lot_summary)
# Deliverable 3 

# Perform t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(readSuspension$PSI, mu = 1500)
# Perform t-test() on Lot 1.
t.test(subset(readSuspension, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
# Perform t-test() on Lot 2.
t.test(subset(readSuspension, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
# Perform t-test() on Lot 3.
t.test(subset(readSuspension, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
