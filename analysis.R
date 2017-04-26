#initial commit

titanic_dataset <- read_excel("~/Downloads/titanic3.xls", na = "")
#embarked column has some missing values, better to change to NA values

titanic_df <- data.frame(titanic_dataset)

titanic_df$embarked[is.na(titanic_df$embarked)] <- "S"
