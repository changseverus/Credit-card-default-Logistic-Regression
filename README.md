# R-logistic-regression

Use logistic regression model to predict credit card applicants that are more likely to default, 'stats' package required.

Since the portion of default credit card holders are very small (usually <5%), so recall is chosen as the performance metrics used to evaluate model performance rather than accuracy, since we want the percentage of true positive among real positive to be higher.

Since the dataset contain some sensitive privacy information like gender, income... and it's important not to discriminate,
so the model actually put into use has been modified and removed all the sensitive features.
