
# Create a directory table for the event modifiers in play by play tables

directoryEventModifiers = 
  tibble(
    EventModifier = character(),
    EventModifierDescription = character()
  ) %>%
  add_row(
    EventModifier = 'AP', 
    EventModifierDescription = 'Appeal play'
    ) %>%
  add_row(
    EventModifier = 'BGDP',
    EventModifierDescription = 'bunt grounded into double play'
    ) %>%
  add_row(
    EventModifier = 'BINT', 
    EventModifierDescription = 'batter interference'
    ) %>%
  add_row(
    EventModifier = 'BOOT',
    EventModifierDescription = 'batting out of turn'
    ) %>%
  add_row(
    EventModifier = 'BPDP', 
    EventModifierDescription = 'bunt popped into double play'
    ) %>%
  add_row(
    EventModifier = 'BR', 
    EventModifierDescription = 'runner hit by batted ball'
    ) %>%
  add_row(
    EventModifier = 'C',
    EventModifierDescription = 'called third strike'
    ) %>%
  add_row(
    EventModifier = 'COUB', 
    EventModifierDescription = 'courtesy batter'
    ) %>%
  add_row(
    EventModifier = 'COUF',
    EventModifierDescription = 'courtesy fielder'
    ) %>%
  add_row(
    EventModifier = 'COUR',
    EventModifierDescription = 'courtesy runner'
    ) %>%
  add_row(
    EventModifier = 'DP',
    EventModifierDescription = 'unspecified double play'
    ) %>%
  add_row(
    EventModifier = 'E$',
    EventModifierDescription = 'error on $'
    ) %>%
  add_row(
    EventModifier = 'FDP',
    EventModifierDescription = 'fly ball double play'
    ) %>%
  add_row(
    EventModifier = 'FINT',
    EventModifierDescription = 'fan interference'
    ) %>%
  add_row(
    EventModifier = 'FL',
    EventModifierDescription = 'foul'
    ) %>%
  add_row(
    EventModifier = 'FO',
    EventModifierDescription = 'force out'
    ) %>%
  add_row(
    EventModifier = 'GDP', 
    EventModifierDescription = 'ground ball double play'
    ) %>%
  add_row(
    EventModifier = 'GTP',
    EventModifierDescription = 'ground ball triple play'
    ) %>%
  add_row(
    EventModifier = 'IF',
    EventModifierDescription = 'infield fly rule'
    ) %>%
  add_row(
    EventModifier = 'INT',
    EventModifierDescription = 'interference'
    ) %>%
  add_row(
    EventModifier = 'IPHR', 
    EventModifierDescription = 'inside the park home run'
    ) %>%
  add_row(
    EventModifier = 'LDP', 
    EventModifierDescription = 'lined into double play'
    ) %>%
  add_row(
    EventModifier = 'LTP', 
    EventModifierDescription = 'lined into triple play'
    ) %>%
  add_row(
    EventModifier = 'MREV', 
    EventModifierDescription = 'manager challenge of call on the field'
    ) %>%
  add_row(
    EventModifier = 'NDP', 
    EventModifierDescription = 'no double play credited for this play'
    ) %>%
  add_row(
    EventModifier = 'OBS', 
    EventModifierDescription = 'obstruction (fielder obstructing a runner)'
    ) %>%
  add_row(
    EventModifier = 'PASS', 
    EventModifierDescription = 'a runner passed another runner and was called out'
    ) %>%
  add_row(
    EventModifier = 'R$', 
    EventModifierDescription = 'relay throw from the initial fielder to $ with no out made'
    ) %>%
  add_row(
    EventModifier = 'RINT', 
    EventModifierDescription = 'runner interference'
    ) %>%
  add_row(
    EventModifier = 'SF',
    EventModifierDescription = 'sacrifice fly'
    ) %>%
  add_row(
    EventModifier = 'SH', 
    EventModifierDescription = 'sacrifice hit (bunt)'
    ) %>%
  add_row(
    EventModifier = 'TH', 
    EventModifierDescription = 'throw'
    ) %>%
  add_row(
    EventModifier = 'TH%', 
    EventModifierDescription = 'throw to base %'
    ) %>%
  add_row(
    EventModifier = 'TP', 
    EventModifierDescription = 'unspecified triple play'
    ) %>%
  add_row(
    EventModifier = 'UINT', 
    EventModifierDescription = 'umpire interference'
    ) %>%
  add_row(
    EventModifier = 'UREV', 
    EventModifierDescription = 'umpire review of call on the field'
    )
