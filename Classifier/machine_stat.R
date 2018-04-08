test <- function(n) {
plotpt = c(1:n)
for(k in plotpt)
{
train.ai(k)
netval = as.matrix(read.table("netval.txt",fill= TRUE))
testdata = as.matrix(read.table("test.txt",fill= TRUE))
n= length(testdata)/2
cor=0

w.1=netval[1]
b.1=netval[2]
for(i in 1:n){
a.0=as.integer(testdata[i,1])
a.1 = tanh(w.1*a.0/10+b.1)
if(a.1>0)
{
res = "B"

}
else
{

res = "A"
}

if(res==testdata[i,2])
{
cor=cor+1
}

}

plotpt[which(plotpt==k)]=cor/n*100
}
plot(plotpt,type = "o",col = "red",xlab = "Learning Data set size", ylab = "Accuracy percentage")
}