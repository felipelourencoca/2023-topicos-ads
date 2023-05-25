
--2
multiplosTres :: [Int] -> Int -- adicionar o flip
multiplosTres xs =  length $ filter ((0==).mod 3 ) xs 
--length [x | x<-xs, mod x 3 == 0]


multiplosTres' ::   Int
multiplosTres'  = length [x | x<-[0..5], mod x 3 == 0]

numerosPositivos :: [Int] -> [Int]
numerosPositivos xs = filter (>=10) xs -- filter (>10) xs

paresNegativos :: [Int] -> [Int]
paresNegativos xs = [x | x<-xs, x < 0 && even x]

elementoMeio :: [String] -> String
elementoMeio [] = ""
elementoMeio [x] = "Um elemento"
elementoMeio [x,y] = "Dois elementos"
elementoMeio xs = xs !! div (length xs) 2
elementoMeio xs2 |
    div (length xs2) 2 == 0 = "nao tem implementacao" 


--3
data Pessoa = Fisica{nome::String,cpf::String} | Juridica{nome::String,cnpj::String} 
    deriving (Show,Eq)

pessoaFisica :: [Pessoa] -> [Pessoa]
pessoaFisica xs = filter peF xs--[ p | p@(Fisica _ _)<-xs]
    where
            peF (Fisica _ _) = True
            peF _ = False

ehFisica :: Pessoa -> Bool
ehFisica (Fisica _ _) = True
ehFisica _ = False

pessoaFisica' :: [Pessoa] -> [Pessoa]
pessoaFisica' xs = [ x | x<-xs, ehFisica x]

totalPessoasFisicas :: [Pessoa] -> Int
totalPessoasFisicas xs = length $ pessoaFisica xs


-- 4
tri :: Int -> Int
tri 1 = 1
tri 2 = 1
tri 3 = 1
tri x = undefined

--5

{-
a) [12,20,30]
b) [90,92..100]
c) "AF"
d) True
-}





tri' x
  | x <= 3 = 1

