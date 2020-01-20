---
title       : Data Product Development   
subtitle    : Final Assignment
author      : Andrea Gaudio 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
github:
    user: AndreaG5
    repo: Slidify
knit        : slidify::knit2slides
---

## Project goal

1. Produce a Shiny application
2. Create slides using Slidify
3. Provide them online on GitHubs or RPubs

--- .class #id 


## Dataset

The dataset taken into account for the development of the application is "iris", preloaded on R.


```r
data(iris)
head(iris)
```

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1          5.1         3.5          1.4         0.2  setosa
## 2          4.9         3.0          1.4         0.2  setosa
## 3          4.7         3.2          1.3         0.2  setosa
## 4          4.6         3.1          1.5         0.2  setosa
## 5          5.0         3.6          1.4         0.2  setosa
## 6          5.4         3.9          1.7         0.4  setosa
```



---
## MyApp

The App I decided to develop allows the user to select two to four variables of the iris dataset that are then plotted in a simple scatterplot in order to explore the relationsip between each other and constructs a linear model based on those variables, showing the coefficients of the model.

I just wanted to note that I had troubles with the presentation of the coefficients and in particular their names, so i decided to print only the text output, so the printed values are ordered based on the choice that the user makes on checkboxes.


---
## Output
Use the Shiny app at https://andreag5.shinyapps.io/myapp/

Explore the code at https://github.com/AndreaG5/Dev_Data_Product




