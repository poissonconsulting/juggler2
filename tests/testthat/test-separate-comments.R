context("separate-comments")

test_that("separate_comments", {

#   model_code <- "model {
# bIntercept ~ dnorm(0, 5^-2) # M
# sY ~ dunif(0, 5)            # M
# for(i in 1:length(Y)) {     # MP
# mu[i] <- bIntercept + bX * X[i]
# Y2[i] ~ dnorm (mu[i], sY^-2) # a
# }
# }"
#   separate_comments(model_code)$comments
#   expect_identical(separate_comments(model_code)$model_code,
#                  "model {
# bIntercept ~ dnorm(0, 5^-2)
# sY ~ dunif(0, 5)
# for(i in 1:length(Y)) {
# mu[i] <- bIntercept + bX * X[i]
# Y2[i] ~ dnorm (mu[i], sY^-2)
# }
# }")

})
