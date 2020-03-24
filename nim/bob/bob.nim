import strutils
func hey*(phrase: string): string =
  let phr = strip(phrase)
  if strip(phrase) == "":
    return "Fine. Be that way!"
  if phr == phr.toUpper and phr[phr.high] == '?' and {'A'..'Z'} in phr: 
    return "Calm down, I know what I'm doing!"
  if phr[^1] == '?' and {'a'..'z','0'..'9',':'} in phr:
    return "Sure."
  if phr == phr.toUpper and {'A'..'Z'} in phr:
    return "Whoa, chill out!"
  return "Whatever."