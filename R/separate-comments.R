separate_comments <- function(model_code) {
  comments <- str_replace_all(model_code, "\n|(^|\n)[^#]*", "\n")
  model_code %<>% str_replace_all("#[^\n]*", "") %>% str_replace_all("[ ]{2,}", "")
  list(model_code = model_code, comments = comments)
}
