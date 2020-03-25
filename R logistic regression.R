library(stats)

# load train and test set data
dat<-read.table("train data.csv",header=TRUE,sep=",")
test<-read.table("test data.csv",header=TRUE,sep=",")

# set categorical variable
dat$a<-factor(dat$a)
dat$b<-factor(dat$b)
dat$c<-factor(dat$c)
dat$d<-factor(dat$d)

# run basic EDA
str(dat)
head(dat)
summary(dat)

# plot histogram to see the distribution of applicants' income, job type, credit card type
hist(dat$g)
hist(dat$i)
hist(dat$t)

# fit logistic regression model to train data
model<-glm(formula=o~.,data=dat,family=binomial(link="logit"))
summary(model)

# predict result with test data
x<-predict.glm(model,type="response",newdata=test)
