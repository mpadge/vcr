pluck <- function(x, name, type) {
  if (missing(type)) {
    lapply(x, "[[", name)
  } else {
    vapply(x, "[[", name, FUN.VALUE = type)
  }
}

last <- function(x) {
  if (length(x) == 0) {
    return(list())
  } else {
    x[length(x)][[1]]
  }
}

errmssg <- "use_cassette requires a block.\nIf you cannot wrap your code in a block, use\ninsert_cassette / eject_cassette instead."

response_summary <- function(x) {
  httr::http_condition(x, "message")$message
}

compact <- function(x) Filter(Negate(is.null), x)
