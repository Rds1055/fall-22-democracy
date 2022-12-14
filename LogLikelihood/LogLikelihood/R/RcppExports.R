# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Log Likelihood
#' @description Calculates word distinctiveness using the log likelihood algorithm. You input a data frame with columns for the word, the text group, and the number of times that word appears in that group. The column names are set to "word", "group", and "n" by default but they can be changed using the parameters word, group, and n. If any of these columns are not found, the function will not work. The output will be a new data frame with a column called "word" containing all unique words and subsequent columns for all unique groups with the name of that group. The data frame will contain the log likelihood scores for each word in each group. The larger a log likelihood score is, the more distinctive that word is to that group.
#' @param text Data frame containing data
#' @param group_list Vector containing all groups to find log likelihood scores for
#' @param word_list Vector containing all words to find log likelihood scores for
#' @param group Name of data frame column containing text group
#' @param word Name of data frame column containing words
#' @param n Name of data frame column containing word count in text group
#' @return Data frame containing a column containing unique words and columns for log likelihood scores for each group
#' @examples
#' # Load example Jane Austen dataset
#' require(dplyr)
#' require(janeaustenr)
#' require(tidytext)
#' data = austen_books() %>%
#'     unnest_tokens(word, text) %>%
#'     count(book, word, sort = TRUE)
#' # View example dataset
#' head(data)
#' 
#' # Compute log likelihood
#' output = log_likelihood(
#'   data, 
#'   group = "book", 
#'   group_list = c("Mansfield Park", "Emma", "Pride & Prejudice"), 
#'   word_list = c("person", "age")
#' )
#' head(output)
#' @useDynLib LogLikelihood
#' @importFrom Rcpp evalCpp
#' @exportPattern ^[[:alpha:]]+
log_likelihood <- function(text, group_list = as.character( c()), word_list = as.character( c()), group = "group", word = "word", n = "n") {
    .Call('_LogLikelihood_log_likelihood', PACKAGE = 'LogLikelihood', text, group_list, word_list, group, word, n)
}

