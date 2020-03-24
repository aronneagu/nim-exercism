import sets, strutils
proc isIsogram*(str: string): bool =
  let 
    s1 = str.multiReplace(("-",""),(" ",""))
    s2 = str.toLowerAscii.
      multiReplace(("-",""),(" ","")).
      toHashSet
  if s1.len == s2.len: return true