#problem c solution:
#a match is ended when a player wins 3 sets
#in a best of five game
tennis<-function(p)
{
  q=1-p
  s3=p*p*p+q*q*q#probability that match ends in 3 sets
  s4=((p*p*p)*q+(q*q*q)*p)*3#probability that match ends in 4 sets
  s5=((p*p*p)*(q*q)+(p*p)*(q*q*q))*6#probability that match ends in 5 sets
  s=sample(x=3:5, size=1, prob=c(s3,s4,s5))#picking a random event out of winning in 3 sets, 4 sets, 5 sets, but with wieghted probablities of each event as found above
  return(s)
}
matches=numeric(length=1000)
for(i in 1:1000){
  matches[i]=tennis(0.70)
}
ans<-mean(matches)
ans
