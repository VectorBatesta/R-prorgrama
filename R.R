(idade=c(19,54,13,16,84,24,67,1,26,7,23,2,42,63,7,23,7,12,52,67,23,74,24,67,85,36,72,65,45,54,34,84)) #inicia vetor

mean(idade) #media
var(idade) #variancia amostral
sd(idade) #desvio padrao

idade[c(1,2,6)] #printa o primeiro, segundo, sexto valor do vetor idade
idade[c(1:6)] #printa do primeiro até o sexto

dados1=data.frame(idade=c(1,3,4),sex=c('masc','fem','tran')) #relaciona um valor de idade com sex (ver -> data)

dados1$idade #acessa os dentros do dataframe

install.packages('rattle',dependencies = F) #instala pacote (baixa automatico) MAS instala as dependencias, fazer manualmente -> packages

data(wine,package='rattle')
dim(wine)
head(wine)
names(wine)
table(wine$Type)


wine2=wine[,-1]

wine2=scale(wine2)
head(wine2)

install.packages('factoextra')

library(factoextra)
fviz_nbclust(wine2, kmeans)

modelo=kmeans(wine2, 3)
modelo$cluster

wine$Type
table(modelo$cluster,wine$Type)

fviz_cluster(modelo, data = wine2)



#
