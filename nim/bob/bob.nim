import strutils
proc hey*(phrase: string): string =
  let phr = strip(phrase)
  if strip(phrase, true, true, {' ','\n','\t','\r'}) == "":
    return "Fine. Be that way!"
  if phr == phr.toUpper and phr[phr.high] == '?' and find(phrase, {'A'..'Z'}) != -1: 
    return "Calm down, I know what I'm doing!"
  if phr[phr.high] == '?' and find(phr,{'a'..'z','0'..'9',':'}) != -1:
    return "Sure."
  if phr == phr.toUpper and find(phr, {'A'..'Z'}) != -1:
    return "Whoa, chill out!"
  return "Whatever."