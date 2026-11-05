
# 1.1
x <- seq(from = 5, to = 35, by = 2)
x
length(x)


# 1.2
A <- matrix(x, nrow = 4, ncol = 4, byrow = TRUE)
A

# 1.3
eigen(A)$values

# 1.4
A[1:2, 1:2] <- 7
A


# 1.5
det(A)

# 1.6
A_inv <- solve(A)
A_inv

# 1.7
b <- A[1, ]
b

# 1.8
y <- A_inv %*% b
y

# 1.9
vmin <- pmin(as.vector(y), pi / 2)
vmin

# 1.10
diag(1:10)




# ---------- Question 2 ----------
fib <- function(n) {
  if (n == 0) return(0)
  prev <- 0
  curr <- 1
  if (n >= 2) {
    for (i in 2:n) {
      nxt  <- prev + curr
      prev <- curr
      curr <- nxt
    }
  }
  curr
}

fib(3)
format(fib(50), scientific = FALSE, big.mark = ",")


# ---------- Question 3 ----------
nums <- 1:100
result <- nums[nums %% 3 == 0 & nums %% 5 == 0]
for (v in result) {
  print(v)
}


# ---------- Question 4 ----------
div_3_5 <- function(n) {
  v <- 1:n
  v[v %% 3 == 0 & v %% 5 == 0]
}

div_3_5(100)
div_3_5(200)


# ---------- Question 5 ----------
smallest_common_multiple <- function(a, b) {
  candidate <- max(a, b)
  while (candidate %% a != 0 || candidate %% b != 0) {
    candidate <- candidate + 1
  }
  candidate
}

smallest_common_multiple(3, 5)
smallest_common_multiple(6, 10)