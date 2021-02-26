#' Top 10 players, whit the highest PTS, of Year
#'
#' This function allows you to check who are the top 10 players earning the most PTS in certain year
#' @param year An integer, ranges from year 1950 to year 2017
#' @keywords Top 10 NBA players' PTS
#' @return Names of the Top 10 players, who get the most PTS of the year.
#' @export
#' @examples
#' PTS_top10_NBAplayers_of_year(1999)
#' PTS_top10_NBAplayers_of_year(2015)

#Top 10 players, whit the highest PTS, of Year
PTS_top10_NBAplayers_of_year<- function(year){
  nba1 <- dplyr::filter(nba, Year == year)
  nba2 <- dplyr::arrange(nba1, desc(PTS))
  Player_name = nba2$Player[1:10]
  return(Player_name)
}
