import strutils
proc abbreviate*(phrase: string): string =
  let
    phrase = phrase.multiReplace(("-"," "),("_",""),("\\",""),("-",""),("\\",""),(",",""))
  for word in tokenize(phrase, {' '}):
    if word.isSep == false:
      result.add((word.token[0]).toUpperAscii)
