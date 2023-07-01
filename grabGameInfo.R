# This function will pull all game info from the play by play lists
grabGameInfo = function(yr_start, yr_end = NA){
  library(retrosheet)
  library(dplyr)
  library(lubridate)
  
  GameInfo_long = tibble(Year = numeric(),
                         Team = character(),
                         GameNumber = numeric(),
                         category = character(), 
                         info = character())
  
  GameInfoTable = tibble(Year = numeric(),
                         Team = character(),
                         GameNumber = numeric(),
                         VisitingTeam = character(),
                         HomeTeam = character(),
                         Site = character(),
                         Date = character(),
                         Number = numeric(),
                         StartTime = character(),
                         DayNight = character(),
                         # Innings = numeric(),
                         # TieBreaker = numeric(),
                         UseDH = factor(),
                         UmpireHome = character(),
                         Umpire1B = character(),
                         Umpire2B = character(),
                         Umpire3B = character(),
                         # UmpireLF = character(),
                         # UmpireRF = character(),              
                         # InputTime = character(),
                         HowScored = character(),
                         Pitches = character(),
                         OfficialScorer = character(),
                         Temperature = numeric(),
                         WindDirection = character(),
                         WindSpeed = numeric(),              
                         FieldCondition = character(),
                         Precipitation = character(),
                         Sky = character(),
                         ElapsedTime = numeric(),
                         Attendance = numeric(),
                         WinningPitcher = character(),
                         LosingPitcher = character(),
                         Save = character())
  
  yr_seq = seq(yr_start, coalesce(yr_end, yr_start), 1)
  
  for(yr in yr_seq){
    
    CY_TeamIDs = getTeamIDs(year = yr)
    
    print(glue::glue('BEGIN ', yr, ":"))
    
    for(tm in CY_TeamIDs){
      
      CY_team = getRetrosheet(type = "play",
                              year = yr,
                              team = tm)
      
      CY_team_length = length(CY_team)
      
      for(gm in 1:CY_team_length){
        
        current_GameInfo = cbind(
          tibble(
            Year = rep(yr, length(CY_team[[gm]]$info[,1])),
            Team = rep(tm, length(CY_team[[gm]]$info[,1])),
            GameNumber = rep(gm, length(CY_team[[gm]]$info[,1])),
            category = CY_team[[gm]]$info[,1],
            info = CY_team[[gm]]$info[,2]
          )
        )
        
        GameInfo_long = rbind(GameInfo_long, current_GameInfo)
      }
      
      print(glue::glue(yr, tm, '- COMPLETE', .sep = " "))
    }
    
    print(glue::glue(yr, " - COMPLETE"))
  }
  
  print(glue::glue('BEGIN DATA PREP'))
  
  GameInfoTable = GameInfo_long %>% 
    #mutate(row = row_number()) %>%
    group_by(Year, Team, GameNumber) %>%
    pivot_wider(names_from = category, 
                values_from = info, 
                values_fn = list) %>% 
    transmute(#Year = as.numeric(year),
      #Team = as.character(team),
      #GameNumber = as.numeric(game_no),
      VisitingTeam = as.character(visteam),
      HomeTeam = as.character(hometeam),
      Site = as.character(site),
      Date = as.character(date),
      Number = as.numeric(number),
      StartTime = as.character(starttime),
      DayNight = as.character(daynight),
      # Innings = as.numeric(innings),
      # TieBreaker = as.numeric(tiebreaker),
      UseDH = as.factor(usedh),
      UmpireHome = as.character(umphome),
      Umpire1B = as.character(ump1b),
      Umpire2B = as.character(ump2b),
      Umpire3B = as.character(ump3b),
      # UmpireLF = as.character(umplf),
      # UmpireRF = as.character(umprf),              
      # InputTime = as.character(inputtime),
      HowScored = as.character(howscored),
      Pitches = as.character(pitches),
      OfficialScorer = as.character(oscorer),
      Temperature = as.numeric(temp),
      WindDirection = as.character(winddir),
      WindSpeed = as.numeric(windspeed),              
      FieldCondition = as.character(fieldcond),
      Precipitation = as.character(precip),
      Sky = as.character(sky),
      ElapsedTime = as.numeric(timeofgame),
      Attendance = as.numeric(attendance),
      WinningPitcher = as.character(wp),
      LosingPitcher = as.character(lp),
      Save = as.character(save)
    ) %>%
    #select(-year,-team,-game_no) %>%
    group_by(Year, Team) %>%
    nest()
  
  print(glue::glue('DATA PREP COMPLETE'))
  
  return(GameInfoTable)
}