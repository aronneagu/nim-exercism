import strutils
proc isPangram*(sentence: string): bool =
  const
    alphabet = {'a'..'z'}
  var 
    letters: set[char] = {}
  for i in sentence.toLowerAscii:
    letters.incl(char(i))
  letters.excl('"')
  letters.excl('.')
  if card(alphabet * letters) == 26: result = true
  else: result = false