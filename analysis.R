#initial commit

titanic_dataset <- read_excel("~/Downloads/titanic3.xls", na = "")
#embarked column has some missing values, better to change to NA values

titanic_df <- data.frame(titanic_dataset)

titanic_df$embarked[is.na(titanic_df$embarked)] <- "S"

mean_value_of_age_without_na <- mean(titanic_df$age, na.rm = TRUE)

titanic_df$age[is.na(titanic_df$age)] <- mean_value_of_age_without_na

titanic_df$boat[is.na(titanic_df$boat)] <- "None"

titanic_df["has_cabin_number"] <- NA


titanic_df$has_cabin_number[which(is.na(titanic_df$cabin) == TRUE)] <- "0"
titanic_df$has_cabin_number[which(is.na(titanic_df$cabin) == FALSE)] <- "1"

