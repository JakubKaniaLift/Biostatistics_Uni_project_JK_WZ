# Sprawozdanie VDR
Jakub Kania (117419)
Wiktor Zborowski (125763)

## VDR
VDR (Vitamin D Receptor) - to białko obecne w komórkach i spełniające funkcje czynnika transkrypcyjnego, przy aktywacji przez witaminę D. Główna funkcją VDR jest regulacja ekspresji genów, wpływająca na to w jaki sposób są odczytywane informacje genetyczne i wykorzystywane przez komórkę. Istnieje wiele badań naukowych skupiających się na roli VDR w kontekście różnych chorób, w tym nowotworów.
VDR bierze także udział we prawidłowym wzroście komórek tkanek piersi i ich różnicowaniu. Nieprawidłowości wynikające z polimorfizmów (FokI, BSM) mogą doprowadzić do przemiany prawidłowo funkcjonujących komórek, w komórki nowotworowe.

## Materiały i metody
### Materiały
Materiałem badawczym jest zbiór danych zawierający informacje o dwóch populacjach. Pierwsza populacja dotyczy osób badanych pod względem wystąpienia polimorfizmu FokI dla VDR, natomiast druga populacja dotyczy polimorfizmu BSM.

Populacja dla FokI zawierała 645 zbadanych wariantów, a dla BSM było to 582 warianty.

#### Liczebności poszczególnych wariantów (FokI)
| AA | AG | GG |
|--|--|--|
| 157 | 264 |224 |

#### Liczebności poszczególnych wariantów (BSM)
Zbiór danych dla BSM zawierał dodatkowe warianty 'TC', które zawierały tę samą informacje co warianty 'CT' stąd zostały one zamienione dla uproszczenia i prawidłowości analizy.

| CC | CT | TT |
|--|--|--|
| 202 | 296 |84 |

### Metody wykorzystane do analizy
#### Test chi-kwadrat zgodności
Test chi-kwadrat zgodności został wykorzystany w celu sprawdzenia czy rozkład obserwowanych częstości w poszczególnych populacjach różni się istotnie od rozkładu teoretycznego.

$X^{2} = \sum\frac{(O_{i} - E_{i})^2}{E_{i}}$
* $X^2$ - wartość statystyki testowej chi-kwadrat,
* $O_i$ - obserwowana częstość w i-tej kategorii,
* $E_i$ - oczekiwana częstość w i-tej kategorii.

#### Testowanie zgodności z rozkładem Hardy'ego-Weinberga
**Równowaga Hardy'ego-Weinberga** to teoretyczny model genetyczny opisujący, jak się zmieniają częstości genotypów w populacji, gdy nie występują wpływy ewolucyjne

Testowanie zgodności z rozkładem Hardy'ego-Weinberga jest procedurą statystyczną stosowaną w genetyce populacyjnej, aby ocenić, czy genotypy w danej populacji utrzymują się w równowadze z rozkładem Hardy'ego-Weinberga.

##### Wzór:
$p + q = 1$

* $p$ - frekwencja allelu dominującego
* $q$ - frekwencja allelu recesywnego

$p^2 + 2pq + q^2 = 1$

* $p^2$ - frekwencja homozygot dominujących
* $2pq$ - frekwencja heterozygot
* $q^2$ - frekwencja homozygot recesywnych

Znając liczebności oczekiwane genotypów w poszczególnych populacjach i liczebności obserwowane, możemy przeprowadzić test chi-kwadrat zgodności w celu sprawdzenia czy wartości obserwowane mają zachowany rozkład Hardy'ego-Weinberga.

#### Odds ratio (OR)
Odds ratio (OR) to miara statystyczna używana w badaniach epidemiologicznych, medycznych i innych dziedzinach nauki, aby ocenić siłę związku między dwiema zmiennymi kategorycznymi. Najczęściej stosuje się ją w kontekście analizy przypadków i kontroli, ale również w badaniach kohortowych.
##### Wzór:

$OR = \frac{ad}{bc}$
* a to liczba jednostek narażonych, które doświadczyły zdarzenia (ryzyka),
* b to liczba jednostek narażonych, które nie doświadczyły zdarzenia,
* c to liczba jednostek nie-narażonych, które doświadczyły zdarzenia,
* d to liczba jednostek nie-narażonych, które nie doświadczyły zdarzenia.

Odds ratio różne od 1 sugeruje związek między badanymi zmiennymi. OR większe od 1 wskazuje zwiększone ryzyko, podczas gdy OR mniejsze od 1 wskazuje na zmniejszone ryzyko. Jeśli OR wynosi 1, to sugeruje brak związku między dwiema zmiennymi.

## Wyniki
### Test chi-kwadrat zgodności
$H_0:$ Nie ma istotnych różnic między obserwowanymi a oczekiwanymi częstościami w danej próbie.
$H_1:$ Istnieją istotne różnice między obserwowanymi a oczekiwanymi częstościami w danej próbie.

#### FokI:
* Chi square test value: 27.1907
* Degrees of freedom: 2
* Critical value: 5.9915

#### BSM:
* Chi square test value: 116.3299
* Degrees of freedom: 2
* Critical value: 5.9915

W obydwu przypadkach wartość statystyki testowej chi kwadra jest większa od wartości krytycznej, zatem w badanych populacjach występują istotne różnice między obserwowanymi a oczekiwanymi częstościami analizowanych genotypów.

### Hardy-Weinberg test
$H_0:$ Populacja jest w równowadze Hardy'ego-Weinberga.
$H_1:$ Populacja nie jest w równowadze Hardy'ego-Weinberga.

#### FokI
* Chi square test value: 19.1852
* Degrees of freedom: 1
* Critical value: 3.8415

#### BSM
* Chi square test value: 2.1506
* Degrees of freedom: 1
* Critical value: 3.8415

Dla populacji z polimorfizmem FokI wartość statystki testowej (19.1852) jest większa niż wartość krytyczna, więc populacja nie jest w równowadze Hardy'ego-Weinberga. Natomiast dla BSM wartość statystyki testowej (2.1506) jest mniejsza od wartości krytycznej, zatem populacja dla BSM jest w równowadze Hardy'ego-Weinberga.

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

## Dyskusja
Wynik analizy chi-kwadrat zgodności wskazuje na różnice występowania poszczególnych alleli wobec wartości teoretycznych, co pozwala przypuszczać, że na częstość występowania mają wpływ inne czynniki. 
W populacji badanej pod względem występowania polimorfizmu FokI nie jest zachowana równowaga Hardy'ego Weinberga. Może to wskazywać na rolę polimorfizmu w rozwoju nowotworu piersi. Populacja badana pod względem BSM nie wykazuje tej zależności i rozkład Herdy'ego Weinberga jest zachowany.
Rezultat analizy Odd's Ratio dla FokI jest wyższy od 1. Oznacza to, że ryzyko nowotworu jest wyższe u pacjentów posiadających w genotypie allel 'A', czyli allel dominujący. Można zatem wnioskować, o roli dominującego allelu 'A' w rozwoju nowotworu komórek piersiowych. Dla drugiego badanego polimorfizmu, BSM, Odd'r ratio jest równe 1.0006. Oznacza to, że ryzyko wystąpienia nowotworu jest równe w obu grupach, zatem występuje brak efektu allelu w rozwoju choroby.
