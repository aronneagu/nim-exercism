# Both ways of declaring proc are equivalent
# https://nim-lang.org/docs/manual.html#procedures-func
#proc isLeapYear*(year: int): bool {.noSideEffect} =
func isLeapYear*(year: int): bool =
  #debugEcho "This is how you print witin a func"
  if year mod 400 == 0: return true
  if year mod 100 == 0: return false
  if year mod 4 == 0: return true