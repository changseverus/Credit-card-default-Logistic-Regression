library(stats)

# load train and test set data
dat<-read.table("project4 model.csv",header=TRUE,sep=",")
test<-read.table("project4 test.csv",header=TRUE,sep=",")

# set categorical variable
dat$a<-factor(dat$a)
dat$b<-factor(dat$b)
dat$c<-factor(dat$c)
dat$d<-factor(dat$d)

# plot histogram to see the distribution of applicants' income, gender, credit card type
hist(dat$g)
hist(dat$i)
hist(dat$t)

# fit logistic regression model to train data
model<-glm(formula=o~.,data=dat,family=binomial(link="logit"))
summary(model)

# predict result with test data
x<-predict.glm(model,type="response",newdata=test)