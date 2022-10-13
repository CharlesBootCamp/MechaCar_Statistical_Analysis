# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  The vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values. The three variables that have random variance are spoiler_angle, AWD, and vehicle_weight.
  
  ![image](https://github.com/CharlesBootCamp/MechaCar_Statistical_Analysis/blob/main/MechaCar1.png)

- Is the slope of the linear model considered to be zero? Why or why not?

  Our slope is not zero by looking at the p-value, which while less than 0.05, coming up as 5.35e-11.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  The R-squared value is 71.49%, this gives a reasonable amount of effectiveness, but it can be improved upon. The mpg data however, can also be influenced by other factors, so precaution should be taken when using just one piece of data.
  
## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  The variances for both Lot 1 and Lot 2 are within the given specifications of 100 pounds, with variences averaging around 1 and 7.5, while Lot 3 has an average of about 170 varience, making it outside the safe range. The mean and median of all lots are about 1500 each, with the standard deviation of Lot 1, 2, and 3 being 1%, 2.7%, and 13% respectively.

## T-Tests on Suspension Coils

  The Lot 3 percent confidence interval, 95, is the lowest one of all 3 lots, the only one with a negative t, and having a median lower that 1,500.
  All t-tests can be seen below:
  
  ![image](https://github.com/CharlesBootCamp/MechaCar_Statistical_Analysis/blob/main/MechaCar2.png)

## Study Design: MechaCar vs Competition

  In order for MechaCar to suceed, they need to be above the rest of the competition, doing so in the mpg values definitely helps, but there are other features that consumers are also looking for, such as the horsepower of the vehicle. One good test would be to examine how the horsepower of their vehicles compared to the competetion. The t-test will have to be modified in order to take the horespower into account, but that should be the only thing to do, after accumulating and storing the data.
