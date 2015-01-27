install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

#LOAD LIBRARIES
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")

head(iris)
iris[1:2,]
df <- melt(iris, id.vars = "Species")
df[1:2, ]

help(df)

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
summary(myplot)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
myplot + geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color=Species)) + geom_point(aes(shape = Species), size = 3)

#Make a small sample of the diamonds dataset

d2 <- diamonds[sample(1:dim(diamonds)[1],1000), ]
ggplot(data = d2, aes(x = carat, y = price)) + geom_point(aes(color = color), size = 3)

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color=Species)) + geom_point() + facet_grid(Species ~.)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color=Species)) + geom_point() + facet_grid(~Species)

library(RColorBrewer)
display.brewer.all()

df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar (stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")
   
#Cambiarle el ancho de los boxplots
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot(width = .2)

#BARPLOTS
ggplot(iris, aes(Species, Sepal.Length)) + geom_bar(stat = "identity")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity")

ggplot(d2, aes(clarity, fill=cut)) + geom_bar(stat = "cut")
ggplot(d2, aes(clarity, fill=cut)) + geom_bar(position="dodge")
ggplot(d2, aes(clarity, fill=cut)) + geom_bar()

ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species)) + geom_point(aes(shape=Species), size=3) + geom_smooth(method="lm")
