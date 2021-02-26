#' Get the oldest Player's name of the year
#'
#' This function allows you to check who was the oldest Player of the year
#' @param year An integer, ranges from year 1950 to year 2017
#' @keywords oldest player
#' @return Name of the player, representing the oldest player of the year.
#' @export
#' @examples
#' oldest_player_of_year(1999)
#' oldest_player_of_year(2015)

oldest_NBAplayer_of_year<- function(year){
  nba1 <- dplyr::filter(nba, Year == year)
  nba2 <- dplyr::arrange(nba1, desc(Age))
  Player_name = nba2$Player[1]
  return(Player_name)
}
