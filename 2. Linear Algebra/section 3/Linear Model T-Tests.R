library(contrast)
species <- factor(c("A","A","B","B"))
condition <- factor(c("control","treated","control","treated"))
model.matrix(~ species + condition)
contrast()$X
