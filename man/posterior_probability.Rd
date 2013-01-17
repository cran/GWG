\name{posterior_probability}
\alias{posterior_probability}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Posterior probability of disease given prevalence and positive or negative likelihood ratio of a test
}
\description{Computes the posterior probability of disease given prevalence (prior probability) and positive or negative likelihood ratio of a test. Furthermore it is possible to give out the posterior odds.
}
\usage{posterior_probability(prevalence,lrpos=-1, lrneg=-1 ,posterior_odds=FALSE)
}
\arguments{
  \item{prevalence}{The prevalence of a disease (=prior_odds).}
  \item{lrpos}{The positive likelihood ratio (only displayed on the output window if a values >= 0 has been entered).}
  \item{lrneg}{The negative likelihood ratio (only displayed on the output window if a values >= 0 has been entered).}
  \item{posterior_odds}{If TRUE the posterior odds will be displayed on the output window. Default is FALSE.}
}
\details{
\deqn{posterior\_odds\_of\_disease = {prior\_odds} * {pos\_likelihood\_ratio}}
\deqn{prior\_odds = \frac{prior\_probability}{1-prior\_probability}}
\deqn{posterior\_probability\_of\_disease = \frac{posterior\_odds}{1+posterior_odds}}
}
\value{
\item{posterior_probability_pos}{Probability of disease given test is positive}
\item{posterior_probability_neg}{Probability of no disease given test is negative}
\item{posterior_odds_pos}{Posterior odds of test positive}
\item{posterior_odds_neg}{Posterior odds of test negative}
}
\references{Petrie A, Sabin C (2005). Medical statistics at a glance (2nd ed). Wiley-Blackwell. Oxford.
}
\examples{
##Prevalence is 0.5 and the positive likelihood ratio is 3:
posterior_probability(0.5, lrpos=3)

#The probability of disease given test is positive is 0.75.


##Prevalence is 0.5 and the negative likelihood ratio is 0.5:
posterior_probability(0.5, lrneg=0.5, posterior_odds=TRUE)

#The probability of no disease is 0.66 given test is negative and the 
#corresponding posterior odds is 0.5.
}
\keyword{posterior probability}


