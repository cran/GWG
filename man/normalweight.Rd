\name{normalweight}
\alias{normalweight}
\title{Probabilities for inadequate or excessive gestational weight gain (GWG) for normal weight women for different months in pregnancy
}
\description{The category of body mass index (BMI) for normal weight woman, calculated by dividing weight in kilograms by squared height in meters was defined according to the IOM/NRC and WHO criterion (normal weight: 18.5 - 24.9 kg/m^{2}). According to the IOM/NRC guidelines adequate total GWG was classified as total weight gain of 11.5-16 kg for normal weight women. In accordance with IOM inadequate GWG was defined as GWG below and excessive GWG as values above the recommended GWG. 
}
\usage{
normalweight(prevalence, month, weight_gain, path = system.file("NW_above.RData",
             "NW_below.RData", package = "GWG"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prevalence}{Probability of disease (values between 0 and 1), in this case probability for excessive or inadequate GWG in the population where the mother comes from for normal weight women (a priori risk) (examples can be obtainted from http://www.en.soziale-paediatrie.med.uni-muenchen.de/research/tools/index.html)}
  \item{month}{Month of pregnancy (values between 2 and 10). One month was defined as 4 weeks, e.g. month 2 was defined as pregnancy week 5 up to and including 9}
  \item{weight_gain}{Weight gain of woman in the specific month of pregnancy (values: "excessive" or "inadequate")}
  \item{path}{Path the data is located}
}

\value{

\item{month}{Month of pregnancy}
\item{prevalence}{Prevalence for excessive or inadequate GWG in the population where the mother comes from (a priori risk)}
\item{PPVexcessive}{The PPVexcessive gives information whether the total GWG at the end of pregnancy will be excessive in case of exceed the week specific cut-off value (test positive) for a special month for normal weight women}
\item{NPVexcessive}{The NPVexcessive gives information if the total GWG at the end of pregnancy will not be excessive (adequate or inadequate) in case of not having an excessive weight gain (test negative) for normal weight women}
\item{PPVinadequate}{The PPVinadequate gives information whether the total GWG at the end of pregnancy will be inadequate in case of fall below the week specific cut-off value for a special month for normal weight women}
\item{NPVinadequate}{The NPVinadequate gives information if the total GWG at the end of pregnancy will not be inadequate (adequate or excessive) in case of not having an inadequate weight gain for normal weight women}
}


\references{
Knabl J, Riedel C, Gmach J et al. (2013). Prediction of excessive or inadequate gestational weight gain from week-specific IOM/NRC cut-off values. submitted.

Rasmussen KM, Yaktine AL, eds. Institute of Medicine (2009). Weight Gain During Pregnancy: Reexamining the Guidelines. Committee to Reexamine IOM Pregnancy Weight Guidelines. Washington, DC: National Academy Press.

World Health Organisation (2003). Diet, nutrition and the prevention of chronic diseases. In: World Health Organisation, editor. WHO Technical Report Series. Geneva: World Health Organisation. 2003.  p. 1-149.
}
\examples{
options(digits=3)

normalweight(0.39,5, "excessive")

#For a normal weight woman in Germany whose weight gain is excessive in the 
#5th month of pregnancy (a priori risk = 0.39) the probability of excessive 
#total GWG at the end of pregnancy is 0.696

normalweight(0.19,5, "inadequate")

#For a normal weight woman in Germany whose weight gain is inadequate in the 
#5th month of pregnancy (a priori risk = 0.19) the probability of inadequate 
#total GWG at the end of pregnancy is 0.479
}

\keyword{posterior probability}