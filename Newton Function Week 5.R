install.packages("Deriv")
library(Deriv)

f <- function(x)
{ 
  y <- x^2 - 3*x + 2
}

newtmin <- function(funct)
  
{
  dv1 <- Deriv(funct, "x")
  dv2 <- Deriv(Deriv(funct, "x"))
  n <- runif(1, -6, 6)
  minx <- n - (dv1(n)/dv2(n))
  miny <- funct(minx)
  return(c( minx,  miny))
}

newtmin(f)
