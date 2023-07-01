# This function will pull Gamelogs from multiple years from Retrosheet
grabGamelogs = function(yr_start, yr_end = NA){
  # Load libraries
  library(retrosheet)
  library(dplyr)
  
  # Create a sequence of the years we need to pull
  # If the year end isn't specified, we'll only pull the start year
  yr_seq = seq(yr_start, coalesce(yr_end, yr_start), 1)
  
  # Initialize the first year of the Gamelog table since there are many columns
  GamelogTable = as.tibble(
    getRetrosheet(type = 'game',
                  year = yr_start)
  ) %>% 
    mutate(Year = yr_start)
  
  # If there's only one year to pull then we're good, else let's pull all the others  
  if(is.na(yr_end) == FALSE){
    
    # Start a loop starting with the second year in the lsit
    for(yr in yr_seq[-1]){
      
      # Pull the current year from Retrosheet
      currentGamelogTable = as.tibble(
        getRetrosheet(type = 'game',
                      year = yr)) %>% mutate(Year = yr)
      
      # Take that table and union it to our working table
      GamelogTable = rbind(GamelogTable, currentGamelogTable)
      
    }
  }
  
  GamelogTable = GamelogTable %>%
    group_by(Year) %>%
    nest()
  
  # Return the table of all of the teams in each years specified
  return(GamelogTable)
  
}