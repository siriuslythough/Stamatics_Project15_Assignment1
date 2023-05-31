#problem e solution:
html<-read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
name_of_movie<-html%>%html_elements(".article_movie_title a")%>%html_text
ranking<-html%>%html_elements(".countdown-index-resposive")%>%html_text
year<-html%>%html_elements(".subtle.start-year")%>%html_text
year<-gsub("[()]", "", year)#altering the string to remove the brackets
score<-html%>%html_elements(".tMeterScore")%>%html_text
rotten_data<-data.frame("Ranking"=ranking, "Name_of_the_Movie"=name_of_movie, "Tomato_Score"=score, "Release_year"=year)
colnames(rotten_data)=c("Ranking", "Name of Movie", "Tomato % Score", "Year of movie")#giving column header names
print(rotten_data)

