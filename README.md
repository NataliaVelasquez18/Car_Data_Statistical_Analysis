
# Predicting Car Performance: Statistical Analysis using R

---

## Business Problem

Mechacar, a car manufacturer and distributor with more than 30 years of experience in the market.  It has experienced a yearly 8%-10% decline in sales in the last three consecutive years.  After conducting consumer surveys around the country, the most important characteristic that consumers evaluate when purchasing a vehicle is performance measured in miles per gallon (mpg).  There are a few car manufacturers who advertise higher performing vehicles than Mechacar's.

## Purpose

The purpose of this analysis is to help Mechacar's Manufacturing team to understand what car features impact car performance the most.   The manufacturing team will incorporate the insights into the manufacturing process aiming to produce the best performing cars in the market, rebrand the company image, and regain market share.

---

## Overview of Approach

There is a dataset in csv format:

* The dataset[MechaCar_mpg.csv](https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/MechaCar_mpg.csv) contains information about car attributes and car performance . Car attributes are vehicle lenght, vehicle weight, spolier angle, ground clearance, and All-wheel-drive.  Car performance is measured in mpg (miles per gallon).

* The code used to perform the analysis is contained in [Car_Data.RScript.R](https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Car_Data.RScript.R)

* Multiple linear regression is performed in the dataset using RStudio.  P-value and significance level are used as metrics to assess the impact of car features in car performance.

* A study design about Mechacar vs the competition is outlined at the end for future study. 

---

## Executive Summary:

* Vehicle lenght and ground clearance showed to have a significant impact on vehicle performance.  However, they are not the only predictors of performance.  New variables need to be incorporated in the study in order to build a more acurate model.  

---

## Analysis on Car performance MPG:


### Linear Regression


In the next image we can visualize the summary statistics of our Multiple Linear Regression model:




<img src= "https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Screenshots/multiple_linear_regression_mpg.png" width="450" height="350" />



### Interpretation of summary statistics:

* According to our results, ground clearance and vehicle lenght (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on vehicle performance (mpg). 


* The P-value of our linear regression analysis is 2.277e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.  In other words, changes in ground clearance and vehicle lenght impact car performance measured in miles per gallon.


* Although the ground clearance and vehicle length have a significant impact on vehicle performance (mpg), this linear model is not ideal. Our intercept is statistically significant, it means there are other variables and factors that contribute to the variation in mpg that have not been included in our model. To accurately predict vehicle performance, we need to use a more robust model.


---

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


---

## Recommendations:

* We need more data to be able to create a more robust model that can help us preduct car performance.  The dataset provided only had 50 observations. Also, new variables need to be incorporated to analyze if besides vehicle lenght and ground clearance there are other variables that highly impact performance.
