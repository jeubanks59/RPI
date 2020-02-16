#RPIMod.r

smp_size <- floor(0.6 * nrow(FinalDF))
set.seed(123457)
train_ind <- sample(seq_len(nrow(FinalDF)), size = smp_size)
train <- FinalDF[train_ind, ]
test <- FinalDF[-train_ind, ]

# Building the model
model <- glm(dependent ~.  , data = train, family = "binomial")

# Generating AUC, note the misspelling of prediction
predition <- predict(model, newdata = test, type = "response")
AUC <- roc(predictor = predition, response = test$dependent)

# Printing/Plotting results
AUC$auc

pdf("AUC.pdf")
plot(AUC, main = paste("AUC = ", AUC$auc))
dev.off()
