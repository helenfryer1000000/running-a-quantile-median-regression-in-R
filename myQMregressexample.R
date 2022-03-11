install.packages("quantreg")
library(quantreg)
help(rq)

#rm(list=ls())

#need to import the data
#fit2 <- rq(log10mapped ~ isALPHA + isDELTA + source_age + isMALE, tau = .5, data = outdata)
#fit2 <- rq(log10mapped ~  isDELTA + source_age + isMALE, tau = .5, data = outdata)
#fit2 <- rq(log10mapped ~  isALPHA + isDELTA + source_age, tau = .5, data = outdata)
#fit1 <- rq(CTminuscorrect ~  isALPHA + isDELTA + source_age + eitherbeforepositive, tau = .5, data = outdata)
#summary(fit1,se = "nid")

#fit2 <- rq(CTminuscorrect ~ isMALE*isDELTA-isDELTA-isMALE+source_age, tau = .5, data = outdata)
#summary(fit2,se = "nid")

#fit3 <- rq(ct_mean ~  isMALE*isDELTA, tau = .5, data = outdata)
#summary(fit3,se = "nid")



#fit4 <- rq(CTminuscorrect ~  isMALE + source_age + ALPHAvacc + ALPHAnotvacc + DELTAvacc + DELTAnotvacc + NOTvocvacc, tau = .5, data = outdata)
#summary(fit4,se = "nid")

#fit5 <- rq(CTminuscorrect ~  source_age + isDELTA*V2_1to21 +  isDELTA*V3_1to14 +  isDELTA*V4_o14 + isALPHA*V2_1to21 +  isALPHA*V3_1to14 +  isALPHA*V4_o14 - V2_1to21 -  V3_1to14 - V4_o14, tau = .5, data = outdata)

#fit5 <- rq(CTminuscorrect ~  source_age + isDELTA + isALPHA + W2_sp + vaccbeforpositive, tau = .5, data = outdata)
#fit5 <- rq(CTminuscorrect ~  source_age + isDELTA + isALPHA + isALPHA*W2_sp , tau = .5, data = notexposedTABLE)

#fit5 <- rq(CTminuscorrect ~  source_age + isDELTA*W2_sp + isALPHA*W2_sp + isDELTA*vaccbeforpositive + isALPHA*vaccbeforpositive + isNOTVOC*vaccbeforpositive +isNOTVOC*W2_sp - isNOTVOC -  W2_sp - vaccbeforpositive, tau = .5, data = outdata)

#fit5 <- rq(CTminuscorrect ~  source_age + isDELTA + isALPHA + isALPHA*W2_sp + isNOTVOC*vaccbeforpositive +isNOTVOC*W2_sp - isNOTVOC -  W2_sp - vaccbeforpositive, tau = .5, data = outdata)


fit5 <- rq(estVL ~source_age + isDELTA + isALPHA, tau = .5, data = thenotexptable)
fit5 <- rq(estVL ~ source_age + ALPHAvacc, tau = .5, data = thenotexptable)

fit5 <- rq(estVL ~source_age + isALPHA+vaccbeforpositive + isDELTA, tau = .5, data = thenotexptable)


fit5 <- rq(estVL ~source_age + isALPHA*vaccbeforpositive + isDELTA*vaccbeforpositive - vaccbeforpositive, tau = .5, data = thenotexptable)

fit5 <- rq(estVL ~source_age + isALPHA*vaccbeforpositive  + isDELTA - vaccbeforpositive, tau = .5, data = thenotexptable)


fit5 <- rq(estVL ~ age0to10 + age10to20 + age40to70 + age70to100 + isMALE + isALPHA*vaccbeforpositive + isDELTA*vaccbeforepositive - vaccbeforpositive, tau = .5, data = thenotexptable)


#fit5 <- rq(estVL ~age0to10 + age10to20 + age40to70 + age70to100  + isDELTA + isALPHA*whatvac_to14in2 + isALPHA*whatvac_over14in2 +isDELTA*whatvac_over14in2 - whatvac_to14in2, tau = .5, data = thenotexptable)
 

fit5 <- rq(estCT ~isMALE, tau = .5, data = oudata)


summary(fit5,se = "nid")


