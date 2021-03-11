# Car Data Statistical Analysis

## Purpose

The purpose of this analysis is to gain insights from a specific car maker performance data given certain attributes.  Also it is analyzed the difference in production lots.  These two studies contribute to learning more about car attributes that highly influence performance to incorporate the insights into the car design.  Also, the knowledge obtained fom learning more about the uniformity of production across lots will contribute to test quality. Finally, a study design is outlined for further analysis in regards of the consumer preferences of the brand in comparison with the competition.

## Data

We have two small datasets in csv format:

* The firs dataset[MechaCar_mpg.csv](https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/MechaCar_mpg.csv) contains information about car attributes and car performance .

* The second dataset [Suspension_Coil.csv](https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Suspension_Coil.csv) contains information about three different production lots of suspension coils and their pounds per square inch.

* The code used to perform the analysis is contained in [Car_Data.RScript.R](https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Car_Data.RScript.R)



## Linear Regression to Predict Performance MPG (Miles Per Gallon)


In the next image we can visualize the summary statistics of our Multiple Linear Regression model:





<img src= "https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Screenshots/multiple_linear_regression_mpg.png" width="450" height="350" />




## Interpretation of summary statistics:

* According to our results, ground clearance and vehicle lenght (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on vehicle performance (mpg). 


* The P-value of our linear regression analysis is 2.277e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.


* Although the ground clearance and vehicle length have a significant impact on vehicle performance (mpg), this linear model is not ideal. Our intercept is statistically significant, it means there are other variables and factors that contribute to the variation in mpg that have not been included in our model. To accurately predict vehicle performance, we need to use a more robust model.



## Summary Statistics on Suspension Coils


* Summary statistics of the entire dataset:



<img src= "https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Screenshots/total_summary.png" width="450" height="100" />




* Summary statistics across the three production lots:



<img src= "https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Screenshots/lot_summary.png" width="550" height="130" />


* The specification for the company suspension coils dictate that the Variance of the suspension coils must not exceed 100 pounds per square inch. 

* When observing the variance of suspension coils across the three lots analyzed.  We can clearly see that the variance of Lot3 in comparison with the other two lots is greater than 100 pounds per square inch.  Lots 1 and 2 have pretty similar variance.


## T-Tests on Suspension Coils


In the following image, we can observe the results of the t-test performed on each Lot compared to the Population:



<img src= "https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Screenshots/t-test.png" width="450" height="550" />



Assuming a significance level of 5%. When determining if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.  We obtained the following results:

Lot 1 vs Population: our p-value of 0.00000000001568 is below our significance level. Therefore, we have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically different.

Lot 2 vs Population: our p-value of 0.0005911 is below our significance level. Therefore, we have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically different.

Lot 3 Population: our p-value of 0.1589 is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.


## Study Design: MechaCar vs Competition

If we would like to perform a formal statistical study that can quantify how our company performs against the competition these are the steps I recommend implementing:

1. Select a random sample of the population to participate in the study (Exclude children below 16 years old): Select no more than 10,000 participants who live in a city that has a high demand for the two car makers.

2. Select one type of car that is similar in both brands to evaluate, for example: Van, truck, hatchback.

3. Define metrics that are important for consumers when evaluating cars.  For example: safety rating, city fuel efficiency, horse power, highway fuel efficiency, mainteinance cost, vehicle price, green score, awards and accolades, sound system, transmision type.

4. Design a survey to ask each participant to rate each metric in relation if they prefer brand A, brand B. 

5. Define an Hypothesis:  For each metric the hypothesis will be:

* #H0 : There is no difference in frequency distribution between participants preferring brand A and brand B.
* #Ha : There is a difference in frequency distribution between participants preferring brand A and brand B.

6. Hypothesis Testing:

We need to evaluate each metric: Is there a difference in frequency between a participant selecting car maker A and car maker B? We will perform a Chi-squared test.  The chi-squared test is used to compare the distribution of frequencies across two groups (car maker A and car maker B).  With the P-Value and the interval of confidence we will reject or accept the hypothesis.

7. Data needed: 

We will need to tabulate the results of the survey for the 10,000 respondents. Brand A and Brand B are columns and the rows are the metrics.  Each value can only be zero or 1.

## Recommendations:

* We need more data to be able to create a more robust model that can help us preduct car performance.  New variables need to be incorporated to analyze if besides vehicle lenght and ground clearance there are other variables that highly impact performance.


