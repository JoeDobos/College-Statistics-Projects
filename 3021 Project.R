mydata <- read.csv('~/Desktop/Stat3021DataConsolidated.csv',header=TRUE)
attach(mydata)
names(mydata)
head(mydata)
tail(mydata)
mean(mydata$Air.Particles)#ignore
countries <- mydata$Country
air <- mydata$Air.Particles
water <- mydata$Unsafe.Water
#print(countries)
mean(Stat3021DataConsolidated.csv$Air.Particles)#ignore
barplot(height=mydata$Air.Particles, names=mydata$Country, las=2,
main="Percent GDP Spent on Premature Deaths
        Related to Air Pollution (Ambient Air Particles)")

summary(mydata$Air.Particles)
boxplot(mydata$Air.Particles, main="Boxplot of Total GDP (Percentage) Spent on Premature Deaths
        Related to Air Pollution (Ambient Air Particles) Among All Countries")
##The following includes information pertaining to unsafe water supply
barplot(height=mydata$Unsafe.Water, names=mydata$Country, las=2,
main="Percent GDP Spend on Premature Deaths Related
        to Water Obtained from Unsafe Sources")
summary(mydata$Unsafe.Water)
boxplot(mydata$Unsafe.Water, main="Boxplot of Total GDP (Percentage) Spent on Premature
        Deaths Related to Water Obtained from Unsafe Sources, Among All Countries")

##side by side boxplot##
boxplot(air ~ water, main="Percent GDP Spent 
        on Premature Deaths Resulting from Air Pollution and Unsafe Water",
        ylab="Percentage")
