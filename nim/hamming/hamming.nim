proc distance*(first,second: string): int =
  if first.len() != second.len(): raise newException(ValueError,"differnet lengths")
  for i,letter in first:
    if first[i] != second[i]: inc result