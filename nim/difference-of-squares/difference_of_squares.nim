func sumOfSquares*(x: int): int =
  for i in 1..x:
    result += i * i

func squareOfSum*(x: int): int =
  for i in 1..x:
    result += i
  result * result

func difference*(x: int): int =
  squareOfSum(x) - sumOfSquares(x)