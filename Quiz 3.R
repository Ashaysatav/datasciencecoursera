library(datasets)
data(iris)
iris
s<-split(iris, iris$Species)
lapply(s, function(x) colMeans(x[,c("Sepal.Length", "Sepal.Width")]))
apply(iris[,1:4], 2, mean)

library(datasets)
data(mtcars)

tapply(mtcars$mpg, mtcars$cyl, mean)

with(mtcars, tapply(mpg,cyl,mean))

debug(ls)