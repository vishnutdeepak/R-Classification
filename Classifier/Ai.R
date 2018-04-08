ai <- function(a.0) {
netval = as.matrix(read.table("netval.txt",fill= TRUE))
w.1=netval[1]
b.1=netval[2]
a.1 = tanh(w.1*a.0/10+b.1)
if(a.1>0)
{
return("B")

}
else
{

return("A")
}

}