Cutlets <- read.csv(file.choose())
View(Cutlets)
attach(Cutlets)

#############Normality test###############

shapiro.test(Unit.A)
# p-value = 0.32 >0.05 so p high null fly => It follows normal distribution

shapiro.test(Unit.B)
# p-value = 0.5225 >0.05 so p high null fly => It follows normal distribution

#############Variance test###############

var.test(Unit.A,Unit.B)#variance test
# p-value = 0.3136 > 0.05 so p high null fly => Equal variances

############2 sample T Test ##################

t.test(Unit.A,Unit.B,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
# alternative = "two.sided" means we are checking for equal and unequal
# means
# null Hypothesis -> Equal means
# Alternate Hypothesis -> Unequal means
# p-value = 0.4723 > 0.05 accept null Hypothesis 
# equal means. Hence the diameter between two cutlets are not staistically significant.
