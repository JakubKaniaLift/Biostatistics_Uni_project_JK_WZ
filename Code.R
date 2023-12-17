library(tidyverse)

dane = read.csv2('C:/Users/Jakub/Desktop/Magisterka/Magisterskie - III semestr/Łaczmański/Sprawozdanie_2/Dane.csv', 
                 header = TRUE, na.strings=c("","NA")) #Loading data
dane #Checking if data load correctly

#Missing values in BSM and CT/TC rekords change
table(dane$BSM, useNA = "always") #Looking for missing values in BSM column

dane$BSM[dane$BSM == 'TC'] <- 'CT'

BSM <- na.omit(dane$BSM)
FokI <- dane$VDR_FokI

#Checking if changes were done right
table(BSM, useNA = "always") #Looking if cleaning was done correctly
table(FokI, useNA = "always")

#_______________________________________________________________________________
#Testing if genetic changes are significant for each variant
table(FokI)/nrow(dane) #FokI genotype probabilities
table(BSM)/nrow(dane) #BSM genotype probabilities

#FokI
table(FokI)

obs_values <- c(table(FokI)[1], 
                table(FokI)[2],
                table(FokI)[3]) #Observed values
teo_prob <- c(1/length(table(FokI)),
              1/length(table(FokI)),
              1/length(table(FokI))) #Theoretical values

total <- sum(obs_values) #Sum of rows
expected <- total * teo_prob #Expected probability

#Chi square test
chi_square_stat <- sum((obs_values - expected)^2 / expected)

#Degrees of freedom
df <- length(obs_values) - 1

#Critical value
wk <- qchisq(0.95, df)

print(paste("Chi square test value:", chi_square_stat))
print(paste("Degrees of freedom:", df))
print(paste("Critical value:", wk))

#BSM
table(BSM)

obs_values <- c(table(BSM)[1], 
                table(BSM)[2],
                table(BSM)[3])
teo_prob <- c(1/length(table(BSM)),
              1/length(table(BSM)),
              1/length(table(BSM)))

total <- sum(obs_values)
expected <- total * teo_prob

#Chi square test
chi_square_stat <- sum((obs_values - expected)^2 / expected)

#Degrees of freedom
df <- length(obs_values) - 1

#Critical value
wk <- qchisq(0.95, df)

print(paste("Chi square test value:", chi_square_stat))
print(paste("Degrees of freedom:", df))
print(paste("Critical value:", wk))

#_______________________________________________________________________________
#Checking whether the data distribution follows the Hardy Weinberg distribution

#FokI
table(FokI)

#Dominant allele freq
p = (2 * table(FokI)[1] + table(FokI)[2]) / (2*length(FokI))
#Recessive allele freq
q = (2 * table(FokI)[3] + table(FokI)[2]) / (2*length(FokI))

p_2 <- p^2 #Homozygous dominant
pq_2 <- 2 * p * q #Heterozygous
q_2 <- q^2 #Homozygous recessive

#Chi square test
chisq <- sum(((c(157, 264, 224) - (c(p_2,pq_2,q_2)*645))^2) / (c(p_2,pq_2,q_2)*645))
chisq

#BSM
table(BSM)

p = (2 * table(BSM)[1] + table(BSM)[2]) / (2*length(BSM))
q = (2 * table(BSM)[3] + table(BSM)[2]) / (2*length(BSM))

p_2 <- p^2
pq_2 <- 2 * p * q 
q_2 <- q^2

chisq <- sum(((c(202, 296, 84) - (c(p_2,pq_2,q_2)*582))^2) / (c(p_2,pq_2,q_2)*582))
chisq

#_______________________________________________________________________________
#Calculating odds ratios for SNP
#FokI
table(dane$Group,dane$VDR_FokI)
FokI_matrix <- matrix(c(2*92 + 94, 2*65 + 170, 
                        2*90 + 94, 2*134 + 170),2,2)
row.names(FokI_matrix) <- c('cancer', 'control')
colnames(FokI_matrix) <- c('A','G')
FokI_matrix

OR_FokI <- (FokI_matrix[1,1] * FokI_matrix[2,2]) /
  (FokI_matrix[1,2] * FokI_matrix[2,1]) #Calculating odds ratio
print(paste("Odds Ratio:", OR_FokI))

#BSM
table(dane$Group,dane$BSM)

BSM_matrix <- matrix(c(2*96 + 140, 2*106 + 156,
                       2*40 + 140, 2*44 + 156),2,2)
row.names(BSM_matrix) <- c('cancer', 'control')
colnames(BSM_matrix) <- c('C','T')
BSM_matrix

OR_BSM <- (BSM_matrix[1,1] * BSM_matrix[2,2]) / (BSM_matrix[1,2] * BSM_matrix[2,1])
print(paste("Odds Ratio:", OR_BSM))
