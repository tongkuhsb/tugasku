dataku=read.delim("clipboard")
install.packages("randomforest")
install.packages("caret")
library("randomforest")
library("caret")
sampel=sample(1:nrow(dataku),0,65*nrow(dataku),replace = TRUE)
training=data.frame(dataku)[sampel,]
testing=data.frame(dataku)[-sampel,]
str(dataku)
View(dataku)
modelRF=randomforest(keputusan~.,data=training)
prediksi=predict(modelRF,testing)
hasil=confusionmatrix(table(prediksi,testing$keputusan))
hasil