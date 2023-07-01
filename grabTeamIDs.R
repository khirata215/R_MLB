# This function will pull Team IDs and Team Names from multiple years from Retrosheet
grabTeamIDs = function(yr_start, yr_end = NA){
  # Load libraries
  library(retrosheet)
  library(dplyr)
  
  # Create a sequence of the years we need to pull
  # If the year end isn't specified, we'll only pull the start year
  yr_seq = seq(yr_start, coalesce(yr_end, yr_start), 1)
  
  # Initialize a blank tibble
  TeamIDtable = 
    tibble(Year = numeric(),
           TeamIDs = character(),
           TeamNames = character())
  
  # Start a loop to pull the teams for each year
  for(yr in yr_seq){
    
    # Use retrosheet to get the teams for the current year
    TeamIDs = getTeamIDs(yr)
    # They have rownames that are the team's name
    TeamNames = names(TeamIDs)
    # Create a vector of the year to add to the long table
    Years = rep(yr, length(TeamIDs))
    
    # Combine the Team IDs, Team Names, and the year into a tibble
    TeamIDtable = 
      tibble(Year = Years,
             TeamIDs = TeamIDs,
             TeamNames = TeamNames) %>% 
      # Append it on to our working table
      union_all(TeamIDtable)
  }
  # Return the table of all of the teams in each years specified
  return(TeamIDtable)
}
