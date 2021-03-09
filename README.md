# Car Data Statistical Analysis

## Linear Regression to Predict Performance MPG (Miles Per Gallon)

### In the next image we can visualize the summary statistics of our Multiple Linear Regression model:


<img src= "https://github.com/NataliaVelasquez18/Car_Data_Statistical_Analysis/blob/main/Screenshots/multiple_linear_regression_mpg.png" />


### Interpretation of summary statistics:

* According to our results, ground clearance and vehicle lenght (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on vehicle performance (mpg). 


* The P-value of our linear regression analysis is 2.277e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.


* Although the ground clearance and vehicle length have a significant impact on vehicle performance (mpg), this linear model is not ideal. Our intercept is statistically significant, it means there are other variables and factors that contribute to the variation in mpg that have not been included in our model. To accurately predict vehicle performance, we need to use a more robust model.
