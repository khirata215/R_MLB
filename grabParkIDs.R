# This function will pull all Park IDs and make it a tibble
grabParkIDs = function(){
  library(retrosheet)
  library(dplyr)
  RetroSheet_ParkIDs = as_tibble(getParkIDs())
  return(RetroSheet_ParkIDs)
}