\name{OB_below}
\alias{OB_below}
\docType{data}
\title{Sensitivity, specificity, positive and negative likelihood ratios for prediction of inadequate GWG for obese women 
}
\description{
This dataset include the sensitivity and specificity for prediction of inadequate GWG at the end of pregnancy from falling below the respective cut-off values in each respective month as well as the likelihood ratio to assess how much the information on falling below the cut-off values improves the a priori probabilities for inadequate and adequate total GWG for obese women (starting with the 2nd month or week 4/1-8/0). The data is based on 186 obese women from two German cohorts (see Description).
}
\usage{data("OB_below")}
\format{
  A data frame with 9 observations on the following 13 variables.
  \describe{
    \item{month}{month of pregnancy}
    \item{se.est}{vector of sensitivity estimators}
    \item{se.lower}{vector of lower bound of the confidence interval of the sensitivity estimators}
    \item{se.upper}{vector of upper bound of the confidence interval of the sensitivity estimators}
    \item{sp.est}{vector of specificity estimators}
    \item{sp.lower}{vector of lower bound of the confidence interval of the specificity estimators}
    \item{sp.upper}{vector of upper bound of the confidence interval of the specificity estimators}
    \item{lr.pos.est}{vector of positive likelihood ratio estimators}
    \item{lr.pos.lower}{vector of lower bound of the confidence interval of the positive likelihood ratio estimators}
    \item{lr.pos.upper}{vector of upper bound of the confidence interval of the positive likelihood ratio estimators}
    \item{lr.neg.est}{vector of negative likelihood ratio estimators}
    \item{lr.neg.lower}{vector of lower bound of the confidence interval of the negative likelihood ratio estimators}
    \item{lr.neg.upper}{vector of upper bound of the confidence interval of the negative likelihood ratio estimators}
  }
}
\details{
Exact binomial 95\% confidence intervals (CI) were calculated for sensitivity and specificity and the 95\% CI of the likelihood ratios were calculated as suggested by Simel et al. (1991).
}
\source{
Knabl J, Riedel C, Gmach J et al. (2013). Prediction of excessive or inadequate gestational weight gain from week-specific IOM/NRC cut-off values. submitted.
}
\references{
Simel D, Samsa G, Matchar D (1991). Likelihood ratios with confidence: Sample size estimation for diagnostic test studies. Journal of Clinical Epidemiology 44.p 763 - 770.
}
\examples{
data("OB_below")

#Plot of positive likelihood ratios for inadequate GWG for obese women 
plot(OB_below$month, OB_below$lr.pos.est,
     xlim=c(1,10),
     ylim=c(0,20),
     main="LR+ for inadequate GWG",
     ylab="likelihood ratio",
     xlab="month",
     cex.main=2,
     font.main=1,
     cex.lab=1.9,
     cex.axis=1.5)
lines(OB_below$month, OB_below$lr.pos.est, lty=1,lwd=4)
lines(OB_below$month, OB_below$lr.pos.lower, lty=2,lwd=4)
lines(OB_below$month, OB_below$lr.pos.upper, lty=2,lwd=4)
abline(h=2,lwd=1, col="grey") 
abline(h=4,lwd=1, col="grey") 
abline(h=6,lwd=1, col="grey") 
abline(h=8,lwd=1, col="grey") 
abline(h=10,lwd=1, col="grey") 
abline(h=12,lwd=1, col="grey") 
abline(h=14,lwd=1, col="grey") 
abline(h=16,lwd=1, col="grey") 
abline(h=18,lwd=1, col="grey") 
axis(1, c(3,5,7,9), cex.axis=1.5)
legend("topleft", c("lr+ estimate", "lr+ confidence interval"),
       col=c("black", "black"), lty=c(1,2),
       bg="white", cex=1.5, lwd=c(3,3))
}
\keyword{datasets}
