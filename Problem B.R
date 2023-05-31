#problem b solution:

html<-read_html("https://www.moneyworks4me.com/indianstocks/large-cap/metals-mining/steel-iron-products/jsw-steel/company-info")
data<-html%>%html_elements(".fw-700_text-left_stick")%>%html_text
data