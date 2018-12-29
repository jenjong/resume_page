# Vector
## Variables

x1 = 3.5
typeof(x1)
x2 = 3
typeof(x2)
x3 = 3L
typeof(x3)


## Variables

x4 = "a"
typeof(x4)
x5 = TRUE
typeof(x5)


## Variables

x6 = x1 + x3
typeof(x6)


## Creating vector
x = c(3)
print(x)

x = c(88, 15, 12, 13)
x
## Creating vector
1:5
3:(-2)
(3.1):(5.5)
## Creating vector
x1 = 1:3
x2 = 10:5
x3 = c(x2,x1)
x3



## Useful functions to create vectors

y = seq(from = 12, to = 30, by = 2)
y
y = seq(12, 30, length = 19)
y


## Useful functions to create vectors
x = rep(8, 4)
x
x = rep( c(5, 12, 13), 3)
x
x = rep( c(5, 12, 13), each = 3)
x

## Slicing vector I
x = 5:8
x1 = x[1:3]
x1
x2 = c(x1[1:3], 10, x[4])
x2


## Slicing vector I

y = c(1.2, 3.9, 0.4, 0.12)
y[c(1, 3)]
y[2:3]
v = 3:4
y[v]
y[c(1, 1, 2)]


## Slicing vector I
y[-c(1,2)]
y[-length(y)]



## Length of vector
x = 3:6
length(x)
1:length(x)


## Operation on vector
x1 = c(5,0, -4)
x2 = c(1, 2, 2)

x1+x2
x1*x2
x1/x2


## Operation on vector

x1 + 3
x1*2

x1 = c(5,0,-4,2)
x2 = c(2,1)
x1/x2


## Order of operations

y = 1:10-1
y
y = 1:(10-1)
y


## useful operation

x <- 11
x^2
x%/%5
x%%5


## Logical operation

6<=7
6==7
6!=7


## Logical operation

z = c(5, 2, -3, 8)
z^2
z^2 > 8



## Slicing vector II (filtering)

z[z>0]
z[z^2>8]


## Slicing vector II (filtering)

x = c(3,1,4,1)
x[x>5]
which(x>5)
x[which(x>5)]


## `%in%` function


1 %in% c(2,1,4)
c(1,5) %in% c(2,1,5)
c(1,5,3) %in% c(2,1,5)
x = c(3,1,4,1)
x%in% c(2,1,4)


## `match()` function


match(1 ,c(2,1,4))
match(c(1,4),c(2,1,4))
x <- c(3,1,4,1)
match(x ,c(2,1,4))


# Matrix

## Create matrix
y = matrix( c(1, 2, 3, 4), nrow = 2, ncol = 2)
y
y = matrix( c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = T)
y


## Create matrix


y = matrix(c(1,3,4,5,1,3,4,1),4,2)
y[1, 1]
y[, 1]
y[-2,]

## Matrix function
class(y)
dim(y)
ncol(y)
nrow(y)


## column bind and row bind

one = rep(1,4)
z = matrix( c(5:8, rep(-1,4), rep(0,4)), 4, 3)
cbind(one, z)


## column bind and row bind

z = rbind(2, z)
z


# Dataframe
## Create dataframe
x = 1:10
x[1] = "a"
typeof(x[2])
x = matrix(1:4,2,2)
x[2,2] = "b"
typeof(x)


## Create dataframe
kids = c("Jack", "Jill")
ages = c(12, 10)
d = data.frame(kids, ages, stringsAsFactors = F)
d 
str(d)


## Selecting the elements

d$ages
class(d$ages)
names(d)


## Selecting the elements

d[1,]
class(d[1,])


## cbind 


A = data.frame(x1 = rep(0,10), x2 = rep('b',10))
B = data.frame(x3 = rep(1,10), x2 = rep('d',10))
AB = cbind(A,B)
head(AB)

