\name{lr}
\alias{lr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Likelihood ratios given sensitivity and specificity of a test
}
\description{Computes positive and negative likelihood ratios (LRs) given sensitivity and specificity of a test. LRs can be used to calculate the probability of disease after a positive or negative test.
}
\usage{
lr(se, sp)}

\arguments{
  \item{se}{sensitivity of a test (values between 0 and 1)}
  \item{sp}{specificity of a test (values between 0 and 1)}
}
\details{LRs are calculated as follows: 
 
\deqn{LRpos = \frac {sensitivity}{1-specificity}}

\deqn{LRneg = \frac {1-sensitivity}{specificity}}
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{lrpos}{the positive likelihood ratio}
\item{lrneg}{the negative likelihood ratio}
}
\references{Fletcher R, Fletcher S (2005). Clinical epidemiology: the essentials (4th ed). Lippincott Williams & Wilkins. Philadelphia.  
}
\examples{
lr(se=0.9, sp=0.7)

#The  positive likelihood ratio is 3 and the egative likelihood ratio is 0.14
}
\keyword{lr}