gleifr_user_agent <- function() {
  sprintf("gleifr/%s", utils::packageVersion("gleifr"))
}

req_gleifr_retry <- function(req) {
  req_retry(req, max_tries = 3L, is_transient = \(resp) resp_status(resp) %in% c(429L, 500L, 503L))
}

gleifr_request <- function(path, params = list()) {
  request("https://api.gleif.org/api/v1") |>
    req_user_agent(gleifr_user_agent()) |>
    req_url_path_append(path) |>
    req_url_query(!!!params) |>
    req_headers(Accept = "application/json") |>
    req_error(body = lei_error_body) |>
    req_gleifr_retry() |>
    req_gleifr_cache()
}

fetch_lei <- function(path, params = list()) {
  gleifr_request(path, params) |>
    req_perform() |>
    resp_body_json()
}

fetch_lei_iter <- function(path, params = list()) {
  resps <- gleifr_request(path, params) |>
    req_perform_iterative(
      next_req = iterate_with_offset(
        "page[number]",
        resp_pages = \(resp) resp_body_json(resp)$meta$pagination$lastPage
      ),
      max_reqs = Inf
    )
  resps_data(resps, \(resp) resp_body_json(resp)$data)
}

lei_error_body <- function(resp) {
  content_type <- resp_content_type(resp)
  if (content_type %in% c("application/json", "application/vnd.api+json")) {
    json <- resp_body_json(resp)
    vapply(json$errors, \(x) x$title, "")
  }
}
