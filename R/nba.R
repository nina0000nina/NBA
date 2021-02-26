#' NBA player performance statistics of particular year: total 24,691 rows and 52 variables.
#'
#' A dataset containing the player's basic personal information and his/her NBA performance of certain years. I will only list the important variables that are used in my functions below.
#'
#' @format A data frame with 24,691 rows and 52 variables:
#' \describe{
#'   \item{Year}{year, from 1950 to 2017}
#'   \item{Player}{name of the player}
#'   \item{Pos}{position of the player}
#'   \item{Age}{player age on February 1 of the given season.}
#'   \item{Tm}{team of the player}
#'   \item{G}{how many games did the player play}
#'   \item{FT}{free throw of the player}
#'   \item{PTS}{points earned during the year}
#'   ...
#' }
#' @source \url{https://www.kaggle.com/drgilermo/nba-players-stats#Seasons_Stats.csv}
#' @export

"nba"

# @format gives an overview of the dataset. For data frames, you should include
# a definition list that describes each variable. It's usually a good idea to describe variables' units here.
