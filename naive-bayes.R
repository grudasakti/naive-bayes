library(e1071)

data <- data.frame(usia=c("dewasa", "lansia", "dewasa", "lansia"),
                   vaksin1=c("sudah", "sudah", "belum", "sudah"),
                   vaksin2=c("sudah", "belum", "belum", "sudah"),
                   masuk=c("boleh", "tidak boleh", "tidak boleh", "tidak boleh"))

View(data)

classifier <- naiveBayes(masuk~usia+vaksin1+vaksin2, data)

classifier

data_testing <- data.frame(usia=c("dewasa"),
                           vaksin1=c("sudah"),
                           vaksin2=c("belum"))

prediksi <- predict(classifier, data_testing, type = "raw")

prediksi
