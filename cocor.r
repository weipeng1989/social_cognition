# This below code is to compare the correlation between two groups

# read the data for group 1

df1 = read.csv(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)

cocor1 = cor.test(df1$fw, df1$prop)

cocor1$estimate

# read the data for group 2

df2 = read.csv(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)

cocor2 = cor.test(df2$fw, df2$prop)

cocor2$estimate






