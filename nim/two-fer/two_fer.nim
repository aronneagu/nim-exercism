proc twoFer*(name: string): string =
  result = "One for " & name & ", one for me."

proc twoFer*(): string =
  result = "One for you, one for me."