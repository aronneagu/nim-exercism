proc sumOfSquares*(x: int): int =
  for i in 1..x:
    result += i * i

proc squareOfSum*(x: int): int =
  for i in 1..x:
    result += i
  return result * result

proc difference*(x: int): int =
  return squareOfSum(x) - sumOfSquares(x)