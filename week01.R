install.packages("lme4")

library(tidyverse)
library(lme4)

lung <- read_csv("data/lung.csv")

ggplot(lung, aes(x=Exposure, y=PEFR)) +
  geom_point()

model <- lm(PEFR~Exposure, data=lung)
summary(model)
# PEFR = m(Exposure)+b

## 0.00201 = P value
### P value shows that value contributes significantly to this model
### closer to 0, has meaningful addition to model bc changes in predictor value are related to changes in response var
### 0 = significant/highly probable it is not due to chance, 1 = insignificant/can be removed from model