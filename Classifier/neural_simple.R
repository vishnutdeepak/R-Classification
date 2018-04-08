neuralnet <- function(a.0,y,w.1,b.1) {
a.1 = tanh(w.1*a.0+b.1)
z.1= w.1*a.0+b.1
w.1 = w.1-(a.0*exp(z.1)/((1+exp(z.1))^2)*2*(a.1-y))
b.1 = b.1-(exp(z.1)/((1+exp(z.1))^2)*2*(a.1-y))
return (c(w.1,b.1))
}