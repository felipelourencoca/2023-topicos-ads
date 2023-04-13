--somar :: Int -> Int -> Int
--somar :: Num a => a -> a -> a
somar :: Int -> Int -> Int
somar x y = x + y

maisUm :: Int -> Int 
maisUm x = x + 1


somarComMaisUm :: Int -> Int -> Int
somarComMaisUm x y = somar (maisUm x) (maisUm y)


juntarString :: String -> String -> String
juntarString x y = x ++ y




--fx = y * y

boolParaBinario :: Bool -> Int
boolParaBinario True = 1
boolParaBinario False = 0