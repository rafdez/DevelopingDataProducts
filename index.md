---
title       : Miles Per Gallon Calculator
subtitle    : Shiny Application
author      : Ramon A. Fernandez
job         : Data Scientist
 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

+ Iterative web applicacion built using the R package Shiny.
+ It shows how to easily deploy a machine learning algorithm on the web.

--- 

## The Algorithm

The algorithm is a multivariate linear regression. It uses the <b>mtcars</b> dataset and predicts the miles per gallons depending on the number of cylinders adjusted by the weight.

For example, the prediction for a car with 4 cylinders and a weight of 3 tons is:


```
##     1 
## 24.37
```


--- 

## The Application

<img src="assets/img/mpg.png" height="482" width="950">

--- 

## Online

The application is deployed at ShinyApp.io. You can visit it <a href="https://rafdez.shinyapps.io/peer/">here</a>.


