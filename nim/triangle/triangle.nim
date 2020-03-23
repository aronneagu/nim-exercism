import sets
proc isEquilateral*(sides: array[3,int]): bool =
  if sides[0] == 0 or sides[1] == 0 or sides[2] == 0: return false
  if sides[0] == sides[1] and sides[1] == sides[2]: return true
  return false

proc isIsosceles*(sides: array[3,int]): bool =
  if sides[0] + sides[1] <= sides[2] or sides[0] + sides[2] <= sides[1] or sides[1] + sides[2] <= sides[0]: return false
  if sides[0] == sides[1] or sides[0] == sides[2] or sides[1] == sides[2]: return true
  return false

proc isScalene*(sides: array[3,int]): bool =
  let sides_set = toHashSet(sides)
  if sides[0] + sides[1] <= sides[2] or sides[0] + sides[2] <= sides[1] or sides[1] + sides[2] <= sides[0]: return false
  if sides.len == sides_set.len: return true
  return false