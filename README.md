# iris-kmeans-clustering-R

# Iris K-Means Kümeleme Analizi

Bu proje, iris veri setini kullanarak k-means kümeleme analizi gerçekleştirmektedir. Proje, veri analizi ve görselleştirme konularında temel bir örnek sunmaktadır.

## Proje Hakkında

Iris veri seti, üç farklı iris çiçeği türünü (Setosa, Versicolor, Virginica) içeren 150 gözlemden oluşmaktadır. Her gözlem, çiçeğin petal (taç yaprağı) ve sepal (çanak yaprağı) uzunluğu ve genişliği gibi özellikleri içermektedir. Bu proje, k-means algoritmasını kullanarak bu gözlemleri kümelere ayırmayı amaçlamaktadır.

## Gereksinimler

Bu projeyi çalıştırmak için aşağıdaki R paketlerine ihtiyacınız vardır:

- `datasets`
- `ggplot2`

Bu paketleri yüklemek için R konsolunda aşağıdaki komutları çalıştırabilirsiniz:

`install.packages("ggplot2")`

R Ortamını Açın: R veya RStudio'yu başlatın.

Gerekli Kütüphaneleri Yükleyin: Aşağıdaki kodu çalıştırarak gerekli kütüphaneleri yükleyin.

Veri Setini Yükleyin: Iris veri setini yüklemek için aşağıdaki kodu kullanın.

`data(iris)`


K-Means Kümeleme Analizini Gerçekleştirin: Aşağıdaki kodu çalıştırarak k-means kümeleme analizi yapın.

`set.seed(15)`
`irisCluster <- kmeans(iris[, 3:4], centers = 3, nstart = 15)`

Sonuçları Görselleştirin: Kümeleme sonuçlarını görselleştirmek için aşağıdaki kodu kullanın.

`ggplot(iris, aes(Petal.Length, Petal.Width, color = as.factor(irisCluster$cluster))) + 
  geom_point() +
  labs(title = "K-Means Kümeleme Sonuçları", 
       x = "Petal Uzunluğu", 
       y = "Petal Genişliği") +
  theme_minimal()`

Sonuçlar
K-means algoritması, iris veri setindeki gözlemleri üç kümeye ayırmıştır. Görselleştirme, her bir kümenin petal uzunluğu ve genişliği açısından nasıl dağıldığını göstermektedir. Kümeleme sonuçları, çiçek türlerinin belirlenmesine yardımcı olabilir.
