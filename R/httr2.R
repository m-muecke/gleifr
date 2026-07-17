lei_user_agent <- function() {
  sprintf("gleifr/%s", utils::packageVersion("gleifr"))
}

req_lei_retry <- function(req) {
  req_retry(req, max_tries = 3L, is_transient = \(resp) resp_status(resp) %in% c(429L, 500L, 503L))
}

lei_request <- function(path, params = list()) {
  request("https://api.gleif.org/api/v1") |>
    req_user_agent(lei_user_agent()) |>
    req_url_path_append(path) |>
    req_url_query(!!!params) |>
    req_headers(Accept = "application/json") |>
    req_error(body = lei_error_body) |>
    req_lei_retry() |>
    req_lei_cache()
}

lei_fetch <- function(path, params = list()) {
  lei_request(path, params) |>
    req_perform() |>
    resp_body_json()
}

lei_fetch_iter <- function(
  path,
  params = list(),
  limit = NULL,
  page_size = 200L,
  paginate = c("page", "cursor")
) {
  paginate <- match.arg(paginate)
  if (!is.null(limit)) {
    page_size <- min(page_size, limit)
  }
  params[["page[size]"]] <- page_size
  next_req <- switch(
    paginate,
    cursor = {
      params[["page[cursor]"]] <- "*"
      iterate_with_cursor("page[cursor]", lei_next_cursor)
    },
    page = {
      params[["page[number]"]] <- 1L
      iterate_with_offset("page[number]", resp_pages = lei_last_page)
    }
  )
  max_reqs <- if (is.null(limit)) Inf else ceiling(limit / page_size)
  resps <- lei_request(path, params) |>
    req_perform_iterative(next_req = next_req, max_reqs = max_reqs)
  data <- resps_data(resps, \(resp) resp_body_json(resp)$data)
  if (is.null(limit)) data else utils::head(data, limit)
}

lei_next_cursor <- function(resp) {
  next_url <- resp_body_json(resp)$links[["next"]]
  if (is.null(next_url)) {
    return()
  }
  url_parse(next_url)$query[["page[cursor]"]]
}

lei_last_page <- function(resp) {
  resp_body_json(resp)$meta$pagination$lastPage
}

lei_error_body <- function(resp) {
  content_type <- resp_content_type(resp)
  if (content_type %in% c("application/json", "application/vnd.api+json")) {
    json <- resp_body_json(resp)
    vapply(json$errors, \(x) x$title, "")
  }
}
