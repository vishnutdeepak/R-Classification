train.ai <- function(n){
gen.data(n)

newnet = c(0,0)
mydata = as.matrix(read.table("small.txt",fill= TRUE))
for(i in 1:n)
{
if(mydata[i,2]=="A")
{
mydata[i,2]=-1
}
if(mydata[i,2]=="B")
{
mydata[i,2]=1
}

newnet = neuralnet(as.integer(mydata[i,1])/10,as.integer(mydata[i,2]),newnet[1],newnet[2])

}
write(newnet,file = "netval.txt",ncolumns =2, sep = " ")

}