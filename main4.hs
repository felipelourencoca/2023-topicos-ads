



aplicaFuncao :: (Int -> Int) -> Int -> Int
aplicaFuncao funcao valor = funcao valor

somarUm :: Int -> Int
somarUm valor = valor + 1


verificarIdade :: Int -> String
verificarIdade idade 
    | idade <= 10 = "Crianca"
    | idade < 18 = "Adolescente"
    | otherwise = "Adulto"
       
verificarIdade' :: Int -> String
verificarIdade' idade 
    | ehCrianca idade = "Crianca"
    | ehAdolescente idade = "Adolescente"
    | otherwise = "Adulto"
        where
            ehCrianca i = i <= 10
            ehAdolescente i = i < 18

verificarIdade'' :: Int -> String
verificarIdade'' idade 
    | ehCrianca = "Crianca"
    | ehAdolescente = "Adolescente"
    | otherwise = "Adulto"
        where
            ehCrianca = idade <= 10
            ehAdolescente= idade < 18



fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib valor = fib(valor -1) + fib(valor -2)



reverso :: String -> String
reverso [] = []
reverso (x:xs) =  reverso (xs) ++ [x]