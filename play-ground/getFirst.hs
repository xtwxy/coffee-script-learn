getFirst [] = []
getFirst (x: xs) = fst x : getFirst(xs)
