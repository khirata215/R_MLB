
# Create Pitch Event Directory used on play by play tables

directoryPitchEvent = 
  tibble(
    PitchEvent = character(),
    PitchEventDescription = character(),
    StrikeFlag = numeric(),
    BallFlag = numeric(),
    FoulFlag = numeric(),
    UnknownFlag = numeric(),
    BatterNotInvolvedFlag = numeric()
  ) %>%
  add_row(
    PitchEvent = 'C', 
    PitchEventDescription = 'Called Strike', 
    StrikeFlag = 1, 
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'S', 
    PitchEventDescription = 'Swinging Strike', 
    StrikeFlag = 1,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'B',
    PitchEventDescription = 'Ball',
    StrikeFlag = 0,
    BallFlag = 1, 
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'F',
    PitchEventDescription = 'Foul Ball',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 1,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'X',
    PitchEventDescription = 'Ball in Play',
    StrikeFlag = 0,
    BallFlag = 0, 
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'T',
    PitchEventDescription = 'Foul Tip',
    StrikeFlag = 1,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'H',
    PitchEventDescription = 'Hit by Pitch',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'L',
    PitchEventDescription = 'Foul Bunt',
    StrikeFlag = 1,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'M',
    PitchEventDescription =  'Missed Bunt',
    StrikeFlag = 1,
    BallFlag = 0, 
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'P',
    PitchEventDescription = 'Pitchout',
    StrikeFlag = 0,
    BallFlag = 1,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'N',
    PitchEventDescription = 'No Pitch',
    StrikeFlag = 0, 
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = 'V',
    PitchEventDescription = 'Automatic Ball, No Pitch Thrown',
    StrikeFlag = 0,
    BallFlag = 1, 
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'K',
    PitchEventDescription = 'Swinging Strike on Pitchout',
    StrikeFlag = 1, 
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'U',
    PitchEventDescription = 'Strike Unknown Type',
    StrikeFlag = 1,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'Q',
    PitchEventDescription = 'Unknown/Missing Pitch',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 1,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = 'R',
    PitchEventDescription = 'Foul Ball on Pitchout',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 1,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 0
  ) %>%
  add_row(
    PitchEvent = '1',
    PitchEventDescription = 'Pickoff to 1st',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = '2',
    PitchEventDescription = 'Pickoff to 2nd',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = '3',
    PitchEventDescription = 'Pickoff to 3rd',
    StrikeFlag = 0,
    BallFlag = 0, 
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = '+', 
    PitchEventDescription = 'Catcher Pickoff',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = '>',
    PitchEventDescription = 'Runner Stealing',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = '*', 
    PitchEventDescription = 'Ball in Dirt Blocked by Catcher',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  ) %>%
  add_row(
    PitchEvent = '.', 
    PitchEventDescription = 'Play Not Involving Batter',
    StrikeFlag = 0,
    BallFlag = 0,
    FoulFlag = 0,
    UnknownFlag = 0,
    BatterNotInvolvedFlag = 1
  )