context("juggle")

test_that("juggle", {

  model_code <- "data {
  Y2 <- Y * 2
}
  model {
    bIntercept ~ dnorm(0, 5^-2) #}}}}
    bX ~ dnorm(0, 5^-2)
    sY ~ dunif(0, 5)
    for(i in 1:length(Y)) {
      mu[i] <- bIntercept + bX * X[i]
      Y2[i] ~ dnorm (mu[i], sY^-2)
    }
} "

  expect_is(juggle(model_code), "jg_model")
})
