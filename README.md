# Project Overview

## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/99636479/177199793-4c2872cc-f6fb-44d5-86e6-e158065d8275.png)

  * The vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in the dataset since their p-values were less than 0.05.           
  * The p-value of the linear regression analysis is 5.35 x 10-11, which is much smaller than the assumed significance level of 0.05%. Therefore, there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
  * This linear model does not predict mpg of MechaCar prototypes effectively because the mulitple R-squared is 71.49%. This indicates that 71.49% of the variablity of the dependent value is explained by this linear model.  There are other factors not included in the model that also affect the mpg of MechaCar.

## Summary Statistics on Suspension Coils
![image](https://user-images.githubusercontent.com/99636479/177214084-5c2f78e0-bb41-431d-b647-9b9dfd5371c9.png)
![image](https://user-images.githubusercontent.com/99636479/177214113-924787a7-f097-4b20-9127-7ca10d249bca.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data only meets this design specification for manufacturing Lot3 because the variance was 170.29. All the other lots and total do not meet the design spefication because their variance is below the 100 pounds per square inch.
