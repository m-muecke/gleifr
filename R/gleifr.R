#' Download the latest LEI mapping data
#'
#' Download the latest Legal Entity Identifier (LEI) mapping data from the
#' Global Legal Entity Identifier Foundation (GLEIF).
#'
#' @param type (`character(1)`)\cr
#'   The type of mapping data to download.
#'   One of `"isin"`, `"bic"`, `"mic"`, or `"oc"`. Default is `"isin"`.
#' @returns A `data.frame()` with the lei and the corresponding mapping.
#' @source <https://www.gleif.org/en/lei-data/lei-mapping>
#' @export
#' @examples
#' \dontrun{
#' lei_mapping("isin")
#' }
lei_mapping <- function(type = c("isin", "bic", "mic", "oc")) {
  url <- latest_url(type)
  lei_download(url)
}

#' Fetch a LEI record
#'
#' Fetch a single LEI record by its Legal Entity Identifier. To fetch records by attribute filters,
#' see [lei_records()].
#'
#' @param id (`character(1)`)\cr
#'   The Legal Entity Identifier (LEI) to fetch.
#' @param simplify (`logical(1)`)\cr
#'   Should the output be simplified? Default `TRUE`.
#' @returns When `simplify = TRUE`, a long-format `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier
#' - **name**: The attribute name
#' - **value**: The attribute value
#'
#' When `simplify = FALSE`, a named `list()` containing the raw API response.
#' @seealso [lei_records()] to fetch records by attribute filters.
#' @export
#' @examples
#' \dontrun{
#' # get simplified long-format data.frame
#' lei_record_by_id("529900W18LQJJN6SJ336")
#'
#' # get raw API response as named list
#' lei_record_by_id("529900W18LQJJN6SJ336", simplify = FALSE)
#' }
lei_record_by_id <- function(id, simplify = TRUE) {
  stopifnot(is_string(id), is_flag(simplify))
  path <- paste("lei-records", id, sep = "/")
  res <- lei_fetch(path)
  if (!simplify) {
    return(res)
  }
  tab <- simplify_records(res$data$attributes)
  clean_names(tab)
}

#' Fetch LEI records
#'
#' Fetch LEI records from the GLEIF database, optionally filtered by attribute. The filters are
#' combined with logical AND, so each one you supply narrows the results further. To fetch a single
#' record by its LEI, see [lei_record_by_id()].
#'
#' @param legal_name (`NULL` | `character(1)`)\cr
#'   Filter by legal name.
#' @param fulltext (`NULL` | `character(1)`)\cr
#'   Full-text search query.
#' @param country (`NULL` | `character(1)`)\cr
#'   Filter by legal address country (ISO 3166-1 alpha-2 code), e.g. `"DE"`.
#' @param jurisdiction (`NULL` | `character(1)`)\cr
#'   Filter by jurisdiction (ISO 3166-1 alpha-2 code), e.g. `"DE"`.
#' @param registration_status (`NULL` | `character(1)`)\cr
#'   Filter by LEI registration status, e.g. `"ISSUED"` or `"LAPSED"`.
#' @param entity_status (`NULL` | `character(1)`)\cr
#'   Filter by entity status, one of `"ACTIVE"` or `"INACTIVE"`.
#' @param category (`NULL` | `character(1)`)\cr
#'   Filter by entity category, e.g. `"FUND"`, `"BRANCH"`, or `"GENERAL"`.
#' @param isin (`NULL` | `character(1)`)\cr
#'   Filter by ISIN.
#' @param ... Additional filter parameters passed to the GLEIF API.
#'   These are appended as query parameters, e.g.
#'   `"filter[entity.subCategory]" = "CENTRAL_GOVERNMENT"`.
#' @param page_size (`NULL` | `integer(1)`)\cr
#'   The number of records per page. Default `200L`.
#' @param page_number (`NULL` | `integer(1)`)\cr
#'   The page number to fetch. When `NULL` (the default), all pages are fetched automatically.
#' @param simplify (`logical(1)`)\cr
#'   Should the output be simplified? Default `TRUE`.
#' @returns When `simplify = TRUE`, a long-format `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier
#' - **name**: The attribute name
#' - **value**: The attribute value
#'
#' When `simplify = FALSE`, a named `list()` containing the raw API response.
#' @seealso [lei_record_by_id()] to fetch a single record by its LEI.
#' @export
#' @examples
#' \dontrun{
#' # search by legal name
#' lei_records(legal_name = "Deutsche Bank")
#'
#' # filter by country and registration status
#' lei_records(country = "DE", registration_status = "ISSUED")
#' }
lei_records <- function(
  legal_name = NULL,
  fulltext = NULL,
  country = NULL,
  jurisdiction = NULL,
  registration_status = NULL,
  entity_status = NULL,
  category = NULL,
  isin = NULL,
  ...,
  page_size = 200L,
  page_number = NULL,
  simplify = TRUE
) {
  stopifnot(
    is_string(legal_name, null_ok = TRUE),
    is_string(fulltext, null_ok = TRUE),
    is_string(country, null_ok = TRUE),
    is_string(jurisdiction, null_ok = TRUE),
    is_string(registration_status, null_ok = TRUE),
    is_string(entity_status, null_ok = TRUE),
    is_string(category, null_ok = TRUE),
    is_string(isin, null_ok = TRUE),
    is_count(page_size),
    is_count(page_number, null_ok = TRUE),
    is_flag(simplify)
  )
  params <- c(
    list(
      `page[size]` = page_size,
      `page[number]` = page_number,
      `filter[entity.legalName]` = legal_name,
      `filter[fulltext]` = fulltext,
      `filter[entity.legalAddress.country]` = country,
      `filter[entity.jurisdiction]` = jurisdiction,
      `filter[registration.status]` = registration_status,
      `filter[entity.status]` = entity_status,
      `filter[entity.category]` = category,
      `filter[isin]` = isin
    ),
    list(...)
  )
  path <- "lei-records"
  if (is.null(page_number)) {
    data <- lei_fetch_iter(path, params)
    if (!simplify) {
      return(data)
    }
    val <- lapply(data, \(x) simplify_records(x$attributes))
    tab <- do.call(rbind, val)
    return(clean_names(tab))
  }
  res <- lei_fetch(path, params)
  if (!simplify) {
    return(res)
  }
  val <- lapply(res$data, \(x) simplify_records(x$attributes))
  tab <- do.call(rbind, val)
  clean_names(tab)
}

#' Fetch LEI regions
#'
#' Fetches the list of regions from the GLEIF API.
#'
#' @returns A `data.frame()` with columns:
#' - **code**: The region code
#' - **language**: The language of the region name
#' - **name**: The region name
#' @export
#' @examples
#' \dontrun{
#' lei_regions()
#' }
lei_regions <- function() {
  resp <- lei_fetch("regions", list(`page[size]` = 100L))
  data <- resp$data
  rows <- lapply(data, function(x) {
    code <- x$attributes$code
    nms <- x$attributes$names
    data.frame(
      code = code,
      language = vapply(nms, \(y) y$language, ""),
      name = vapply(nms, \(y) y$name, ""),
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

#' Fetch LEI issuers
#'
#' Fetches the list of LEI issuers (Local Operating Units) from the GLEIF API.
#'
#' @returns A `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier of the issuer
#' - **name**: The issuer name
#' - **marketing_name**: The marketing name
#' - **website**: The issuer website
#' - **accreditation_date**: The accreditation date
#' @export
#' @examples
#' \dontrun{
#' lei_issuers()
#' }
lei_issuers <- function() {
  resp <- lei_fetch("lei-issuers", list(`page[size]` = 100L))
  data <- resp$data
  rows <- lapply(data, function(x) {
    attrs <- x$attributes
    data.frame(
      lei = attrs$lei,
      name = attrs$name,
      marketing_name = attrs$marketingName %||% NA_character_,
      website = attrs$website %||% NA_character_,
      accreditation_date = attrs$accreditationDate %||% NA_character_,
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

#' Fetch the list of countries
#'
#' Fetches the list of countries (ISO 3166-1) recognized by the GLEIF API.
#'
#' @returns A `data.frame()` with columns:
#' - **code**: The country code
#' - **name**: The country name
#' @export
#' @examples
#' \dontrun{
#' lei_countries()
#' }
lei_countries <- function() {
  fetch_code_list("countries")
}

#' Fetch the list of jurisdictions
#'
#' Fetches the list of jurisdictions (countries and their subdivisions) recognized by the GLEIF API.
#'
#' @returns A `data.frame()` with columns:
#' - **code**: The jurisdiction code
#' - **name**: The jurisdiction name
#' @export
#' @examples
#' \dontrun{
#' lei_jurisdictions()
#' }
lei_jurisdictions <- function() {
  fetch_code_list("jurisdictions")
}

#' Fetch the list of entity legal forms
#'
#' Fetches the list of entity legal forms (ELF codes) recognized by the GLEIF API. These resolve the
#' legal form codes that appear in [lei_record_by_id()] output to human-readable names.
#'
#' @returns A `data.frame()` with columns:
#' - **code**: The entity legal form (ELF) code
#' - **country**: The country the legal form applies to
#' - **country_code**: The country code
#' - **status**: The status of the legal form, e.g. `"ACTV"`
#' - **name**: The local name of the legal form
#' - **language**: The language of the name
#' @export
#' @examples
#' \dontrun{
#' lei_legal_forms()
#' }
lei_legal_forms <- function() {
  data <- lei_fetch_iter("entity-legal-forms", list(`page[size]` = 200L))
  rows <- lapply(data, function(x) {
    attrs <- x$attributes
    nms <- attrs$names
    data.frame(
      code = attrs$code,
      country = attrs$country %||% NA_character_,
      country_code = attrs$countryCode %||% NA_character_,
      status = attrs$status,
      name = if (length(nms) > 0L) {
        vapply(nms, \(y) y$localName %||% NA_character_, "")
      } else {
        NA_character_
      },
      language = if (length(nms) > 0L) {
        vapply(nms, \(y) y$language %||% NA_character_, "")
      } else {
        NA_character_
      },
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

#' Fetch the list of registration authorities
#'
#' Fetches the list of registration authorities (RA codes) recognized by the GLEIF API. These
#' resolve the registration authority codes that appear in [lei_record_by_id()] output to the issuing
#' business registries.
#'
#' @returns A `data.frame()` with columns:
#' - **code**: The registration authority (RA) code
#' - **international_name**: The international name of the authority
#' - **local_name**: The local name of the authority, or `NA` if none
#' - **website**: The authority website, or `NA` if none
#' @export
#' @examples
#' \dontrun{
#' lei_registration_authorities()
#' }
lei_registration_authorities <- function() {
  data <- lei_fetch_iter("registration-authorities", list(`page[size]` = 200L))
  rows <- lapply(data, function(x) {
    attrs <- x$attributes
    data.frame(
      code = attrs$code,
      international_name = attrs$internationalName %||% NA_character_,
      local_name = attrs$localName %||% NA_character_,
      website = attrs$website %||% NA_character_,
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

fetch_code_list <- function(endpoint) {
  data <- lei_fetch_iter(endpoint, list(`page[size]` = 200L))
  rows <- lapply(data, function(x) {
    attrs <- x$attributes
    data.frame(
      code = attrs$code %||% NA_character_,
      name = attrs$name %||% NA_character_,
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

#' Fetch a LEI parent record
#'
#' Fetches the direct or ultimate parent record of a given LEI.
#'
#' @param id (`character(1)`)\cr
#'   The Legal Entity Identifier (LEI) to fetch the parent for.
#' @param type (`character(1)`)\cr
#'   The type of parent to fetch. One of `"direct"` or `"ultimate"`. Default is `"direct"`.
#' @param simplify (`logical(1)`)\cr
#'   Should the output be simplified? Default `TRUE`.
#' @returns When `simplify = TRUE`, a long-format `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier
#' - **name**: The attribute name
#' - **value**: The attribute value
#'
#' When `simplify = FALSE`, a named `list()` containing the raw API response.
#' @seealso [lei_children()] to fetch the child records of a LEI.
#' @export
#' @examples
#' \dontrun{
#' # get direct parent
#' lei_parent("529900W18LQJJN6SJ336")
#'
#' # get ultimate parent
#' lei_parent("529900W18LQJJN6SJ336", type = "ultimate")
#' }
lei_parent <- function(id, type = c("direct", "ultimate"), simplify = TRUE) {
  type <- match.arg(type)
  stopifnot(is_string(id), is_flag(simplify))
  path <- paste("lei-records", id, paste0(type, "-parent"), sep = "/")
  res <- lei_fetch(path)
  if (!simplify) {
    return(res)
  }
  tab <- simplify_records(res$data$attributes)
  clean_names(tab)
}

#' Fetch LEI child records
#'
#' Fetches the direct or ultimate child records of a given LEI.
#'
#' @param id (`character(1)`)\cr
#'   The Legal Entity Identifier (LEI) to fetch the children for.
#' @param type (`character(1)`)\cr
#'   The type of children to fetch. One of `"direct"` or `"ultimate"`. Default is `"direct"`.
#' @param simplify (`logical(1)`)\cr
#'   Should the output be simplified? Default `TRUE`.
#' @returns When `simplify = TRUE`, a long-format `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier
#' - **name**: The attribute name
#' - **value**: The attribute value
#'
#' When `simplify = FALSE`, a named `list()` containing the raw API response.
#' @seealso [lei_parent()] to fetch the parent record of a LEI.
#' @export
#' @examples
#' \dontrun{
#' # get direct children
#' lei_children("529900W18LQJJN6SJ336")
#'
#' # get ultimate children
#' lei_children("529900W18LQJJN6SJ336", type = "ultimate")
#' }
lei_children <- function(id, type = c("direct", "ultimate"), simplify = TRUE) {
  type <- match.arg(type)
  stopifnot(is_string(id), is_flag(simplify))
  path <- paste("lei-records", id, paste0(type, "-children"), sep = "/")
  data <- lei_fetch_iter(path, list(`page[size]` = 200L))
  if (!simplify) {
    return(data)
  }
  val <- lapply(data, \(x) simplify_records(x$attributes))
  tab <- do.call(rbind, val)
  clean_names(tab)
}

#' Fetch ISINs for a LEI
#'
#' Fetches the ISINs associated with a given LEI.
#'
#' @param id (`character(1)`)\cr
#'   The Legal Entity Identifier (LEI) to fetch ISINs for.
#' @returns A `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier
#' - **isin**: The ISIN
#' @export
#' @examples
#' \dontrun{
#' lei_isins("529900W18LQJJN6SJ336")
#' }
lei_isins <- function(id) {
  stopifnot(is_string(id))
  path <- paste("lei-records", id, "isins", sep = "/")
  data <- lei_fetch_iter(path, list(`page[size]` = 200L))
  rows <- lapply(data, function(x) {
    attrs <- x$attributes
    data.frame(lei = attrs$lei, isin = attrs$isin, check.names = FALSE)
  })
  do.call(rbind, rows)
}

#' Fetch the change history of a LEI record
#'
#' Fetches the field-level modification history of a given LEI, i.e. an audit log of every recorded
#' change to the entity (`recordType` `"LEI"`) and its relationships (`recordType` `"RR"`).
#'
#' @param id (`character(1)`)\cr
#'   The Legal Entity Identifier (LEI) to fetch the change history for.
#' @returns A `data.frame()` with columns:
#' - **lei**: The Legal Entity Identifier
#' - **record_type**: The record the change applies to, `"LEI"` or `"RR"`
#' - **modification_type**: The type of change, e.g. `"UPDATE"`
#' - **field**: The path of the changed field
#' - **date**: The date of the change
#' - **value_old**: The previous value, or `NA` if none
#' - **value_new**: The new value, or `NA` if none
#' @source <https://www.gleif.org/en/lei-data/gleif-api>
#' @export
#' @examples
#' \dontrun{
#' lei_modifications("529900W18LQJJN6SJ336")
#' }
lei_modifications <- function(id) {
  stopifnot(is_string(id))
  path <- paste("lei-records", id, "field-modifications", sep = "/")
  data <- lei_fetch_iter(path, list(`page[size]` = 200L))
  rows <- lapply(data, function(x) {
    attrs <- x$attributes
    data.frame(
      lei = attrs$lei,
      record_type = attrs$recordType,
      modification_type = attrs$modificationType,
      field = attrs$field,
      date = attrs$date,
      value_old = attrs$valueOld %||% NA_character_,
      value_new = attrs$valueNew %||% NA_character_,
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

#' Fuzzy search for LEI records
#'
#' Performs a typo-tolerant, approximate search against the GLEIF API. Unlike the filters in
#' [lei_records()], which match literal substrings, this matches on edit distance and returns
#' candidate values together with their LEI. Useful for resolving messy or misspelled entity names
#' to a LEI, which can then be passed to [lei_record_by_id()].
#'
#' @param q (`character(1)`)\cr
#'   The search query.
#' @param field (`character(1)`)\cr
#'   The field to search. One of `"fulltext"`, `"entity.legalName"`, `"owns"`, or `"ownedBy"`.
#'   Default is `"fulltext"`.
#' @returns A `data.frame()` with columns:
#' - **value**: The matched value
#' - **lei**: The Legal Entity Identifier of the matched record, or `NA` if none is linked
#' @source <https://www.gleif.org/en/lei-data/gleif-api>
#' @seealso [lei_autocomplete()] for prefix-based completion, [lei_record_by_id()] for full records.
#' @export
#' @examples
#' \dontrun{
#' lei_fuzzy("Deutsch Bank", field = "entity.legalName")
#' }
lei_fuzzy <- function(
  q,
  field = c("fulltext", "entity.legalName", "owns", "ownedBy")
) {
  field <- match.arg(field)
  stopifnot(is_string(q))
  fetch_completions("fuzzycompletions", field, q)
}

#' Autocomplete LEI records
#'
#' Performs a prefix-based completion against the GLEIF API, returning candidate values together
#' with their LEI. Useful for typeahead-style lookups. For typo-tolerant matching, see [lei_fuzzy()].
#'
#' @param q (`character(1)`)\cr
#'   The search query.
#' @param field (`character(1)`)\cr
#'   The field to search. One of `"fulltext"` or `"owns"`. Default is `"fulltext"`.
#' @returns A `data.frame()` with columns:
#' - **value**: The matched value
#' - **lei**: The Legal Entity Identifier of the matched record, or `NA` if none is linked
#' @source <https://www.gleif.org/en/lei-data/gleif-api>
#' @seealso [lei_fuzzy()] for typo-tolerant matching, [lei_record_by_id()] for full records.
#' @export
#' @examples
#' \dontrun{
#' lei_autocomplete("Appl")
#' }
lei_autocomplete <- function(q, field = c("fulltext", "owns")) {
  field <- match.arg(field)
  stopifnot(is_string(q))
  fetch_completions("autocompletions", field, q)
}

fetch_completions <- function(path, field, q) {
  res <- lei_fetch(path, list(field = field, q = q))
  rows <- lapply(res$data, function(x) {
    data.frame(
      value = x$attributes$value,
      lei = x$relationships$`lei-records`$data$id %||% NA_character_,
      check.names = FALSE
    )
  })
  do.call(rbind, rows)
}

simplify_records <- function(x) {
  x <- unlist(x)
  lei <- x[["lei"]]
  x <- x[names(x) != "lei"]
  data.frame(
    lei = lei,
    name = names(x),
    value = unname(x),
    check.names = FALSE
  )
}

clean_names <- function(tab) {
  tab$name <- sub("\\.X$", "", tab$name)
  tab$name <- gsub(".", "_", tab$name, fixed = TRUE)
  tab$name <- to_snake_case(tab$name)
  tab
}

latest_url <- function(type = c("isin", "bic", "mic", "oc")) {
  type <- match.arg(type)
  url <- "https://www.gleif.org/en/lei-data/lei-mapping"
  endpoint <- switch(
    type,
    isin = "download-isin-to-lei-relationship-files",
    bic = "download-bic-to-lei-relationship-files",
    mic = "download-mic-to-lei-relationship-files",
    oc = "download-oc-to-lei-relationship-files"
  )
  url <- paste(url, endpoint, sep = "/")
  files <- rvest::read_html(url) |>
    rvest::html_element("table") |>
    rvest::html_elements("a") |>
    rvest::html_attr("href")
  files[[1L]]
}

lei_download <- function(url) {
  td <- tempfile()
  dir.create(td)
  on.exit(unlink(td, recursive = TRUE), add = TRUE)
  tf <- file.path(td, "tempfile.zip")
  curl::curl_download(url, tf)
  file <- utils::unzip(tf, exdir = td)
  mapping <- utils::read.csv(file)
  stats::setNames(mapping, tolower(names(mapping)))
}
