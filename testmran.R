if(require("RevoUtilsMath")){
      setMKLthreads(4)
}

set.seed (1)
m <- 10000
n <-  5000
A <- matrix (runif (m*n),m,n)

# Matrix multiply
system.time (B <- crossprod(A))

# Cholesky Factorization
system.time (C <- chol(B))

# Singular Value Deomposition
m <- 10000
n <- 2000
A <- matrix (runif (m*n),m,n)
system.time (S <- svd (A,nu=0,nv=0))

# Principal Components Analysis
m <- 10000
n <- 2000
A <- matrix (runif (m*n),m,n)
system.time (P <- prcomp(A))