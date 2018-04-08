gen.data <- function(n)
{
if(file.exists("small.txt")){
file.remove("small.txt")}
space = c(1:10)
while(n>0)
{
choice = sample(space,size =1)
if(choice<6)
{

class = "A"
}

if(choice>5)
{
class = "B"
}

choicelist = c(choice,class)
write(choicelist,file = "small.txt",ncolumns =2,append = TRUE, sep = " ")

n=n-1
}
}