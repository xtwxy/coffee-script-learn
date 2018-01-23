lightNumbers = [1..2015]
lights = [0,0..]
lightsOn = filterLights $ zip lightNumbers lights
  where filterLights (o:xs) =
    (fst o, 1 + $snd o): filterLights(xs)

