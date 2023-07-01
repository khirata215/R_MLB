
# Create a directory of batted ball types used in play by play tables

directoryBattedBall = 
  tibble(
    BattedBallType = character(),
    BattedBallTypeDescription = character()
    ) %>%
  add_row(
    BattedBallType = 'BP', 
    BattedBallTypeDescription = 'Pop up bunt'
    ) %>%
  add_row(
    BattedBallType = 'BG', 
    BattedBallTypeDescription = 'ground ball bunt'
    ) %>%
  add_row(
    BattedBallType = 'BL', 
    BattedBallTypeDescription = 'line drive bunt'
    ) %>%
  add_row(
    BattedBallType = 'F', 
    BattedBallTypeDescription = 'fly'
    ) %>%
  add_row(
    BattedBallType = 'G', 
    BattedBallTypeDescription = 'ground ball'
    ) %>%
  add_row(
    BattedBallType = 'L', 
    BattedBallTypeDescription = 'line drive'
    ) %>%
  add_row(
    BattedBallType = 'P', 
    BattedBallTypeDescription = 'pop fly'
    )
