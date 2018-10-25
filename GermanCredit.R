library(xlsx)

german_credit <- read.xlsx("GermanCredit.xls", sheetIndex = 1)
german_credit <- german_credit[-c(1)]  #Dropping OBS column 

set.seed(155)
 

# Generating testing and training set
sample <- sample.int(n = nrow(german_credit), size = floor(.7*nrow(german_credit)), replace = F)
train <- german_credit[sample, ]
test  <- german_credit[-sample, ]
