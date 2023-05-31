#problem a solution:
html<-read_html("https://www.moneyworks4me.com/best-index/nse-stocks/top-nifty50-companies-list/")#reading the html sourcecode
name<-html%>%html_elements(".countRow a")%>%html_text
aa<-html%>%html_elements(".countRow td")%>%html_text#has all teh content of thet class, basically all the content of the tablem but in a non user freindly form, stored in a vector
CMP<-numeric(length=50)#using loops we go over particular indices in the vector aa that are equally sapces and contain the same field of information about the comapanies.
for(i in 1:50)
{
  ind=15*i-12
  CMP[i]=aa[ind]
}
Price_change<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-11
  Price_change[i]=aa[ind]
}
Marketcap<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-10
  Marketcap[i]=aa[ind]
}
high<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-9
  high[i]=aa[ind]
}
low<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-8
  low[i]=aa[ind]
}
ROE<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-7
  ROE[i]=aa[ind]
}
PE<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-6
  PE[i]=aa[ind]
}
BV<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-5
  BV[i]=aa[ind]
}
EV<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-4
  EV[i]=aa[ind]
}
prof<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-3
  prof[i]=aa[ind]
}
sales<-numeric(length=50)
for(i in 1:50)
{
  ind=15*i-2#notice how we changed the definition of each index for each subsequent field
  sales[i]=aa[ind]
}
df<-data.frame(name, CMP, Price_change, Marketcap, high, low, ROE, PE, BV, EV, prof, sales)
colnames(df)= c("Company Name (M.Cap)", "CMP", "Price Change", "Market Cap (Cr)", "52 Week High", "52 Week Low", "ROE", "P/E", "P/BV", "EV/EBITDA", "5YSales Gr(%)", "5YProfit Gr(%)")#naming the columns   
print(df)

