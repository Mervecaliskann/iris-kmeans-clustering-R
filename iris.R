# Gerekli k??t??phaneleri y??kle
library(datasets)
library(ggplot2)

# Iris veri setini y??kle ve ba??l??klar?? g??r??nt??le
data(iris)
head(iris)
names(iris)

# Veri setini g??rselle??tir
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + 
  geom_point() +
  labs(title = "Iris Veri Seti: Petal Uzunlu??u ve Geni??li??i", 
       x = "Petal Uzunlu??u", 
       y = "Petal Geni??li??i") +
  theme_minimal()

# Rastgelelik i??in ba??lang???? tohumunu ayarla
set.seed(15)

# K-Means k??meleme olu??tur
irisCluster <- kmeans(iris[, 3:4], centers = 3, nstart = 15)

# K??meleme sonu??lar??n?? yazd??r
print(irisCluster)

# K??meleme sonu??lar??n?? tablo halinde g??ster 
table(irisCluster$cluster, iris$Species)

# K??me numaras??n?? fakt??r olarak ayarla
irisCluster$cluster <- as.factor(irisCluster$cluster)

# K??meleme sonu??lar??n?? g??rselle??tir
ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + 
  geom_point() +
  labs(title = "K-Means Kumeleme Sonuclari", 
       x = "Petal Uzunlu??u", 
       y = "Petal Geni??li??i") +
  theme_minimal()
