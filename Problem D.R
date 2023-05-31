#problem d solution:
#the classic solution is known, that switching door 
#has winning probability as 2/3 and losing 1/3
#so I'm directly using the result
MontyHall<-function()
{
  s=sample(x=0:1, size=1, prob=c(1/3, 2/3))
  return(s)
}
monty=numeric(length=1000)
for(i in 1:1000){monty[i]=MontyHall()}
probability=mean(monty)
probability