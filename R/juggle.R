#' Juggle JAGS Model Code
#'
#' @param model_code A string of the JAGS model to manipulate.
#' @return A jg_model object.
#' @export
juggle <- function(model_code) {
  check_vector(model_code, "")

  model_code %<>% paste0(collapse = "\n")
  model_code %<>% separate_comments()

  obj <- list()
  class(obj) <- "jg_model"
  obj
}
