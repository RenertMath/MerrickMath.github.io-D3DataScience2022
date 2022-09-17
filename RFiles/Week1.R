### First official class of data science
### How to enter in a list of data 
dat <- c(2,3,4,4,5,8)
mean(dat)
range(dat)
var(dat)

### Standard deviation is the square root of the variance 
sd(dat)==sqrt(var(dat))

### Two ways to visualize a numeric vector 
boxplot(dat)
hist(dat)

### How to load a dataset 
pok <- read.csv('/data/datasets/pokemon.csv')
View(pok)
head(pok, 1)
tail(pok,1)

### How to select a column 
attack <- pok$attack
mean(attack)
summary(attack)
boxplot(attack)
hist(attack)
sd(attack)


### Filter data 
attack_50 <- attack[attack > 50]
hist(attack_50)
attack_grass <- attack[pok$type1 == 'grass']
attack_fire <- attack[pok$type1 == 'fire']
boxplot(attack_grass, attack_fire)

### Challenge #1 find the median defence score of psychic pokemon 
median(pok$defense[pok$type1=='psychic'])

### Challenge #2 find the sd of hp for water pokemon 
sd(pok$hp[pok$type1=='water'])

### Water and fire pokemon 
pok$attack[pok$type1=='fire' | pok$type1=='water']

### Challenge find the average weight of rock and grass pokemon 
mean(pok$weight_kg[pok$type1=='rock' | pok$type1=='grass'], na.rm=TRUE)


