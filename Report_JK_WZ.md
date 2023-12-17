# Report VDR
Jakub Kania (117419)
Wiktor Zborowski (125763)

## VDR
VDR (Vitamin D Receptor) is a protein present in cells that functions as a transcription factor when activated by vitamin D. The main role of VDR is to regulate gene expression, influencing how genetic information is read and utilized by the cell. Numerous scientific studies focus on the role of VDR in various diseases, including cancer. VDR also plays a role in the proper growth and differentiation of breast tissue cells. Abnormalities resulting from polymorphisms (FokI, BSM) can lead to the transformation of normally functioning cells into cancer cells.

## Materials and Methods
### Materials

The research material consists of a dataset containing information about two populations. The first population pertains to individuals examined for the occurrence of the FokI polymorphism for VDR, while the second population concerns the BSM polymorphism.

The FokI population included 645 examined variants, and for BSM, there were 582 variants.

#### Counts of individual variants (FokI)
| AA | AG | GG |
|--|--|--|
| 157 | 264 |224 |

#### Counts of individual variants (BSM)
The BSM dataset included additional variants 'TC,' which contained the same information as variants 'CT'; hence, they were combined for simplification and correctness of analysis.

| CC | CT | TT |
|--|--|--|
| 202 | 296 |84 |

### Methods used for analysis
#### Chi-square test of independence
The chi-square test of independence was used to check whether the distribution of observed frequencies in individual populations significantly differs from the theoretical distribution.

$X^{2} = \sum\frac{(O_{i} - E_{i})^2}{E_{i}}$

* $X^2$ - test statistic value of chi-square,
* $O_i$ - observed frequency in the ith category,
* $E_i$ - expected frequency in the ith category.

#### Hardy-Weinberg equilibrium test
**The Hardy-Weinberg equilibrium** is a theoretical genetic model describing how genotype frequencies change in a population when there are no evolutionary influences.

Testing for Hardy-Weinberg equilibrium is a statistical procedure used in population genetics to assess whether genotypes in a given population are in equilibrium with the Hardy-Weinberg distribution.

##### Formula:
$p + q = 1$

* $p$ - frequency of the dominant allele,
* $q$ - frequency of the recessive allele

$p^2 + 2pq + q^2 = 1$

* $p^2$ - frequency of homozygous dominants,
* $2pq$ - frequency of heterozygotes,
* $q^2$ - frequency of homozygous recessives

Knowing the expected counts of genotypes in different populations and the observed counts, we can conduct a chi-square test of independence to check whether the observed values maintain the Hardy-Weinberg distribution.

#### Odds ratio (OR)
Odds ratio (OR) is a statistical measure used in epidemiological, medical, and other scientific studies to assess the strength of the association between two categorical variables. It is commonly used in case-control studies but also in cohort studies.

##### Formula:
$OR = \frac{ad}{bc}$

where:

* a is the number of exposed units that experienced the event (risk),
* b is the number of exposed units that did not experience the event,
* c is the number of unexposed units that experienced the event,
* d is the number of unexposed units that did not experience the event.

An odds ratio different from 1 suggests an association between the variables. OR greater than 1 indicates increased risk, while OR less than 1 indicates decreased risk. If OR equals 1, it suggests no association between the variables.

## Results
### Chi-square test of independence

$H_0:$ There are no significant differences between observed and expected frequencies in the given sample.
$H_1:$ There are significant differences between observed and expected frequencies in the given sample.

#### FokI:
* Chi square test value: 27.1907
* Degrees of freedom: 2
* Critical value: 5.9915

#### BSM:
* Chi square test value: 116.3299
* Degrees of freedom: 2
* Critical value: 5.9915
 
In both cases, the chi-square test statistic value is greater than the critical value, indicating significant differences between observed and expected frequencies of analyzed genotypes in the studied populations.

### Hardy-Weinberg equilibrium test

$H_0:$ The population is in Hardy-Weinberg equilibrium.
$H_1:$ The population is not in Hardy-Weinberg equilibrium.

#### FokI
* Chi square test value: 19.1852
* Degrees of freedom: 1
* Critical value: 3.8415

#### BSM
* Chi square test value: 2.1506
* Degrees of freedom: 1
* Critical value: 3.8415

For the FokI polymorphism population, the chi-square test statistic value (19.1852) is greater than the critical value, indicating that the population is not in Hardy-Weinberg equilibrium. However, for BSM, the test statistic value (2.1506) is smaller than the critical value, suggesting that the BSM population is in Hardy-Weinberg equilibrium.

### Odds ratio
#### FokI
|  | A | G|
|--|--|--|
| cancer | 278 |274|
|control | 300 |438|

Odds Ratio: 1.4813

#### BSM
|  | C | T|
|--|--|--|
| cancer | 332 |220|
|control | 368 |244|

Odds Ratio: 1.0006

## Discussion
The chi-square test of independence results indicates differences in the occurrence of individual alleles compared to theoretical values, suggesting that other factors may influence the frequency of occurrence. In the population examined for the FokI polymorphism, Hardy-Weinberg equilibrium is not maintained. This may indicate the role of the polymorphism in the development of breast cancer. The population examined for BSM does not show this dependency, and the Hardy-Weinberg distribution is maintained. The result of the Odds Ratio analysis for FokI is greater than 1. This means that the risk of cancer is higher in patients with the 'A' allele in their genotype, the dominant allele. It can be inferred that the dominant 'A' allele plays a role in the development of breast cancer. For the second polymorphism examined, BSM, the Odds Ratio is equal to 1.0006. This means that the risk of cancer is the same in both groups, indicating no effect of the allele in the development of the disease.
