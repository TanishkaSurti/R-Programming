Rank = c(1, 2, 3, 4, 5, 6, 7, 8)
Title = c("Guardians of the Galaxy", "Prometheus", "Split", "Sing", "Suicide Squad", "The Great Wall", "La La Land", "Mindhorn")
Director = c("James Gunn", "Ridley Scott", "M. Night Shyamalan", "Christophe Lourdelet", "David Ayer", "Yimou Zhang", "Damien Chazelle", "Sean Foley")
Year = c(2014, 2012, 2016, 2016, 2016, 2016, 2016, 2016)
Runtime = c(121, 124, 117, 108, 123, 103, 128, 29)
Rating = c(8.1, 7, 7.3, 7.2, 6.2, 6.1, 8.3, 6.4)
Votes = c(757074, 485820, 157606, 60545, 393727, 56036, 258682, 2490)
Revenue = c(333.13, 126.46, 138.12, 270.32, 325.02, 45.13, 151.06, NULL)
dataset1 = cbind(Rank, Title, Director, Year, Runtime, Rating, Votes, Revenue)
cat("The first data frame is: ")
print(dataset1)

dataset2 = data.frame(
  Rank = c(9, 10, 11, 12, 13),
  Title = c("The Lost City of Z", "Passengers", "Fantastic Beasts and Where to Find Them", "Hidden Figures", "Rogue One"),
  Director = c("James Gray", "Morten Tyldum", "David Yates", "Theodore Melfi", "Gareth Edwards"),
  Year = c(2016, 2016, 2016, 2016, 2016),
  Runtime = c(141, 116, 133, 127, 133),
  Rating = c(7.1, 7, 7.5, 7.8, 7.9),
  Votes = c(7188, 192177, 232072, 93103, 323118),
  Revenue = c(8.01, 100.01, 234.02, 169.27, 532.17),
  stringsAsFactors = FALSE
)
cat("The second data frame is: ")
print(dataset2)

data_set = rbind(dataset1, dataset2)
cat("The final data frame is: ")
print(data_set)

library(readxl)
IMDB_Movie_Data <- read_excel("C:/Users/tanishka/OneDrive/Desktop/End sem projects/R programming/IMDB-Movie-Data.xls")
View(IMDB_Movie_Data)
#number of rows
print(nrow(IMDB_Movie_Data))
#number of columns
print(ncol(IMDB_Movie_Data))

sum(is.na(IMDB_Movie_Data))

print(dim(IMDB_Movie_Data))

print(names(IMDB_Movie_Data))

print(sort(IMDB_Movie_Data$Title))

print(structure(IMDB_Movie_Data))

min(IMDB_Movie_Data)

max(IMDB_Movie_Data)

mean(IMDB_Movie_Data)

summary(IMDB_Movie_Data)

tail(IMDB_Movie_Data)

head(IMDB_Movie_Data)

typeof(IMDB_Movie_Data)

typeof(IMDB_Movie_Data)

unique(IMDB_Movie_Data)

sd(IMDB_Movie_Data$`Revenue +J1(Millions)`)

data=(IMDB_Movie_Data$`Runtime (Minutes)`)
table=table(data)
print(table)
barplot(table,col='blue')

hist(IMDB_Movie_Data$`Runtime (Minutes)`, col='green',main="Runtime of the Movies", xlab="Runtime", ylab = "count")

row_one <- IMDB_Movie_Data[which.max(IMDB_Movie_Data$Votes), ]
print(row_one)
