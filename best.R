best <- function(state, outcome) {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  
  ## open file, store in data frame
  outcomes <- read.csv("rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv",colClasses="character")
  ## check if state is in states, outcome in outcome
  goodstate <- state %in% levels(factor(outcomes$State))
  goodoutcome <- outcome %in% colnames(outcomes)
  ## debug
  print(c(goodstate,goodoutcome))
}