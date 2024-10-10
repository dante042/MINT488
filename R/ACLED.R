#' ACLED Dataset
#'
#' This dataset contains event data from the ACLED project, including information about political violence, riots, demonstrations, etc.
#'
#' @format A tibble with 12 columns:
#' \describe{
#'   \item{event_id_cnty}{Event ID in the country}
#'   \item{event_date}{Date of the event}
#'   \item{disorder_type}{Type of disorder (e.g., political violence)}
#'   \item{event_type}{Type of event (e.g., riots, demonstrations)}
#'   \item{sub_event_type}{Subtype of the event (e.g., mob violence, armed clash)}
#'   \item{region}{Geographical region where the event occurred}
#'   \item{country}{Country where the event occurred}
#'   \item{latitude}{Latitude of the event location}
#'   \item{longitude}{Longitude of the event location}
#'   \item{source}{Source of the event information}
#'   \item{source_scale}{Scale of the source (e.g., local, national)}
#'   \item{fatalities}{Number of fatalities in the event}
#' }
#' @source ACLED project
"ACLED"
