#' Plot the correlogram of the numeric variables of the year
#'
#' This function allows you to plot the correlogram of all numeric variables of the year, it also returns to a correlation matrix of all numeric variables of the year.
#' @param year An integer, ranges from year 1950 to year 2017
#' @keywords correlogram correlation matrix
#' @return Correlogram and a Correlation Matrix of all the numeric variables of the year
#' @export
#' @examples
#' @importFrom magrittr %>%
#' cor_matrix_of_year(1999)
#' cor_matrix_of_year(2015)


cor_matrix_of_year<- function(year){
  nba1 <- nba %>%
    purrr::keep(is.numeric) %>%
    dplyr::filter(Year == year)
  cor_max <- cor(nba1)
  cor_plot <- corrplot::corrplot(cor_max, method="circle",type="upper")
  return(cor_plot)
}
