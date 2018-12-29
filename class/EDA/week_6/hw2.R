library(FNN)
ii = 1
eval_n <- 500
# Generate Train Data
set.seed(ii)  
x_train <- sort(rnorm(eval_n))
y_train <- 3 + x_train ^ 2 + rnorm(eval_n)
yhat <- rep(0, eval_n)
kvec <- seq(1,100, by = 5)
error <- rep(0, length(kvec))

eval_test_n = 1000
# Generate Test Data 
x_test <- sort(rnorm(eval_test_n))
y_test <- 3 + x_test ^ 2 + rnorm(eval_test_n)

for (k in 1:length(knn_sig))
{
  eval_point <- x_test
  idx_mat <- knnx.index(x_train, eval_point, k)
  for (i in 1:eval_test_n)
  { 
    yhat[i] <- mean(y_train[idx_mat[i,]]) 
  }
  
  knn_sig[k] <- mean((yhat - y_test)^2)
}

plot(knn_sig, type = 'b', col = 'darkblue')
  
  