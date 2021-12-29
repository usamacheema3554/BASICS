data <- read.delim(file.choose())


initial=read.table('R/temp.txt',nrows = 20)
classes=sapply(initial,class)
taball=read.table('R/temp.txt',colClasses = classes)

y <- data.frame(a = 1, b = "a")
dput(y)

dput(y,file = 'y.R')
new.y=dget('y.R')
new.y

x='foo'
y=data.frame(a=1,b='a')
dump(c('x','y'),file = 'data.R')
y
x

str(file)

con=file('R/temp.txt','r')
data=read.csv(con)
close(con)

x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R") 
rm(x, y)
source("data.R")

con <- gzfile("words.gz") 
x <- readLines(con, 10) 
x


con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)

x <- c("a", "b", "c", "c", "d", "a")
x[2]
x[1]
x[x > "a"]
u <- x > "a"
u
x[u]


x <- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1, 3)]
#$baz
#$foo
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]]
x$name
x$foo
x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]
x[[c(2, 1)]]
x[[1]][[3]]
x <- matrix(1:6, 2, 3)
x[1, 2]
x[2, 1]
x[1, ]
x[, 2]
x <- matrix(1:6, 2, 3)
x[1, ]
x[1, , drop = FALSE]
x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]


x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]
x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x * y
x %*% y
x / y

x=10
if(x > 3) {
  y <- 10
} else {
  y <- 0 }

y <- if(x > 3) {
  10
} else { 
  0 }

x <- c("a", "b", "c", "d")
for(i in 1:4) {
  print(x[i])
}
for(i in seq_along(x)) {
  print(x[i])
}
for(letter in x) {
  print(letter)
}
for(i in 1:4) print(x[i])

x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  } 
}

z <- 5
while(z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coin == 1) { ## random walk
    z <- z + 1
  } else {
    z <- z - 1
  } 
}

x0 <- 1
tol <- 1e-8
repeat {
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tol) {
    break
  } else {
    x0 <- x1
  } 
}

for(i in 1:100) {
  if(i <= 20) {
    ## Skip the first 20 iterations
    next
  }
  ## Do something here
}

mydata <- rnorm(100)
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

args(lm)

f <- function(a, b) {
  a^2 }
f(2)

f <- function(a, b) {
  print(a)
  print(b)
}
f(45)

myplot <- function(x, y, type = "l", ...) {
  plot(x, y, type = type, ...) }

x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
x <- 1:4
lapply(x, runif)

x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2)) 
x

lapply(x, function(elt) elt[,1])


x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
sapply(x, mean)

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)

x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)

mapply(rep, 1:4, 4:1)
noise <- function(n, mean, sd) {
  rnorm(n, mean, sd)
}
noise(5, 1, 2)
mapply(noise, 1:5, 1:5, 2)
list(noise(1, 1, 2), noise(2, 2, 2),
     noise(3, 3, 2), noise(4, 4, 2),
     noise(5, 5, 2))

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f

tapply(x, f, mean, simplify = FALSE)

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10) 
split(x, f)

library(datasets)
head(airquality)

s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))


#string docs
str(str)
str(lm)
str(ls)
x<- rnorm(100,2,4)
summary(x)
str(x)
library(datasets)
head(airquality)
summary(airquality)
str(airquality)
m<-matrix(rnorm(100),10,10)
str(m)
s<- split(airquality,airquality$Month)
str(s)
x

Rprof()