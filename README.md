# MechaCar_Statistical_Analysis

## Overview

* RETROSPECTIVE ANALYSIS OF HISTORICAL DATA
* ANALYTICAL VERIFICATION OF CURRENT AUTOMOTIVE SPECIFICATIONS
* STUDY DESIGN OF FUTURE PRODUCT EVALUATIONS & ASSESSMENTS

## New Tools

* R: programming language for data analytics and statistics
* RStudio: and IDE for the R language

## Challenge 

Jeremy and his team are asked by upper management to review production data for the company's newest prototype, the MechaCar which has not yet moved into the manufacturing stage as it is hampered by production issues. Their insights with the analysis may help the manufacturing team graduate the prototype past the production stage. They are given data on test results from 50 prototype vehicles that use multiple design specifications to do the following:

* DELIVERABLE I: Identify which variables predict the MPG of the MechaCar prototype
* DELIVERABLE II: Determine if the manufacturing process for suspension coils and their weight capacities is consistent by   testing different metrics across different lots, centering on the coils' PSI.
* DELIVERABLE III: Given the Population mean of 1500 pounds per square inch, determine if the PSI across all manufacturing lots is statistically different.
* DELIVERABLE IV: Using a statistical study, compare quatifiable aspects of performance of the MechaCar against those of other manufacturers.

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/101307058/182966633-2d93d0eb-dd76-4888-84b5-38a26209688b.png)

The PROBABILITY of VARIANCE for each COEFFICIENT or Pr(>|t|)-value for the variables were as follows:

* VEHICLE LENGTH: 0.00000000000260 ***

* VEHICLE WEIGHT: 0.0776

* SPOILER ANGLE: 0.3069

* GROUND CLEARANCE: 0.0000000521 ***

* ALL-WHEEL DRIVE (AWD): 0.1852

* p-VALUE: 0.0000000000535

* R-SQUARED VALUE: 0.7149

According to the results, VEHICLE LENGTH and GROUND CLEARANCE were statistically very unlikely to provide random amounts of variance so the impact on the prototype's MPG would be significant. Additionally the p-VALUE was well below the significance level of 0.05 so we can reject the null hypothesis and therefore consider the slope for this linear model not to be zero. the R-SQUARED VALUE is calculated as 0.7149 (or approximately 71% without rounding up) so while there may be other factors that can affect the predictive probability of this model, overall it is fairly good. Some other variableS to consider that can affect MPG that were not in this model may include but are not limited to:

* WEATHER CONDITION, PARTICULARLY COLD (WINTER) WEATHER
* BAD FUEL INJECTION SYSTEMS
* DIRTY FUEL FILTERS
* DRIVER HABITS: SPEEDING, HEAVY BRAKING, ETC.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

![image](https://user-images.githubusercontent.com/101307058/182967426-69c04036-7ebc-4689-a7a9-ba3526d70ed7.png)

The results of the TOTAL SUMMARY for all 3 lots are as follows:

* MEAN: 1498.78
* MEDIAN (RANGE): 1452 to 1505
* VARIANCE: 62.29356
* STANDARD DEVIATION: 7.892627

The results of the TOTAL SUMMARY for the Suspension Coils design specifications indicate the variance is within the 100 pounds per square inch tolerance limitations coming in at 62.29356 pounds per square inch.

## Lot Summary by each manufacturing group

![image](https://user-images.githubusercontent.com/101307058/182967838-391baf15-b28f-48a5-a84a-131e3f2b9d4c.png)

![image](https://user-images.githubusercontent.com/101307058/182968065-e39db80a-f743-4308-8925-fb56dd9dd1fc.png)

The results of the LOT SUMMARY is as follows, by LOT:

## LOT 1

* MEAN: 1500.00
* VARIANCE: 0.9795918
* STANDARD DEVIATION: 0.9897433

## LOT 2

* MEAN: 1500.20
*VARIANCE: 7.4693678
*STANDARD DEVIATION: 2.7330181

## LOT 3

* MEAN: 1496.14
* VARIANCE: 170.2861234
* STANDARD DEVIATION: 13.0493725

By comparing the statistical analysis for each group lot, we see that LOT 1 and LOT 2 has a variance below the 100 pounds per square inch tolerance limit, however LOT 3 has a variance level that is well above that limitation and does not meet design specifications in this regard.

## DELIVERABLE III: T-TESTS ON SUSPENSION COILS

Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Test for Population
![image](https://user-images.githubusercontent.com/101307058/182968764-976dc2b6-d780-4e83-af70-d49e46bd7260.png)

Test for Lot1
![image](https://user-images.githubusercontent.com/101307058/182969041-e8050d68-ae28-48c8-9186-70f244e4c53d.png)

Lot 2
![image](https://user-images.githubusercontent.com/101307058/182969112-61b180ee-5159-4d29-8b2e-d9f999b30728.png)

Lot 3
![image](https://user-images.githubusercontent.com/101307058/182969173-2c5de44e-7243-498d-a1b8-3d87d10a92d9.png)

Comparing the t-tests for the individual lots against the Population, we see the mean of each is consistent with the population with no significant variation.
Comparing the p-VALUES however, LOT 3 has a value that is lower than our significance level so the null hypothesis would be rejected. The Population, LOT 1 and LOT 2 have p-VALUES that are higher than our significance level.

NOTE: THE FUEL SYSTEM FOR THE MECHACAR WAS NEVER SPECIFIED FOR THIS MODULE'S SCENARIO

A design study to make the MechaCar an innovation amongst the competition would be a challenge in itself, especially with the fuel system options available today. Hybrid vehicles and Electric vehicles come immediately to mind. With these options to improve fuel efficiency, the suggested obvious options for comparisons to consider are:

* HYBRID vs CONVENTIONAL FUEL SYSTEM
* FULL ELECTRIC vs CONVENTIONAL FUEL SYSTEM
* FULL ELECTRIC vs HYBRID
* (OPTIONAL COMPARISON FOR HYDROGEN FUEL CELL VEHICLES...but I only know of 1 such vehicle so this possibly should not be considered)

The tests that would be recommended would be the t-tests between the MechaCar and the competition. For each type of fuel system, other sub-categories such as MPG (not applicable for full-electric vehicles) would come into play. The null hypothesis would be if there was no difference. The opposite would be the Alternative Hypothesis which would be very useful comparing these fairly new fuel systems.
