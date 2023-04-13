-- Tipos de dados algebricos

data Boleano = Verdade | Falso

boleanoParaTexto :: Boleano -> String
boleanoParaTexto Verdade = "Verdade"
boleanoParaTexto Falso = "Falso"


foo :: (Int,Int) -> (Int,Int)
foo   (0,0)    = (0,0)
foo   (1,x)    = (1 + x, x)
foo   (x,1)    = (1 + x, x)
foo   (400,30) = (2,2)
foo   (x,y)    = (x+y, x * y)


pList :: [Int] -> Int
pList [] = 0 
pList (x:[]) = x
pList (x:y:[]) = x + y
pList (x:_:z:[]) = x * z

pList' :: String -> String
pList' [] = "a"
pList' (x:[]) =  show x
pList' (x:y:[]) = show x ++ show y
pList' (x:_:z:[]) = show x ++ show z

{-
data Pessoa = Fisica String Int | Juridica String Int deriving Show

getPessoaNome :: Pessoa -> String
getPessoaNome (Fisica nome _) = nome
getPessoaNome (Juridica nome _) = nome

setPessoaNome :: Pessoa -> String -> Pessoa
setPessoaNome (Fisica _ idade) novoNome = Fisica novoNome idade
-}

--pessoaShow :: Pessoa -> String
--pessoaShow Juridica = "Eh uma pessoa Juridica"
--pessoaShow Fisica = "Eh uma pessoa física"

--newtype Pessoa = Pessoa Int


data Cargo = Funcionario | Gerente | Assistente | Coordenador deriving (Show,Eq)

data Pessoa = Fisica{nome::String, idade::Int, cargo::Cargo} 
             |Juridica{nome::String, idade::Int} deriving (Show,Eq)

fazerAniversario :: Pessoa -> Pessoa
fazerAniversario (Fisica nome idade cargo) = Fisica nome (idade + 1) cargo 



cargos = [Funcionario,Gerente,Gerente,Assistente]

pessoas = [Fisica "Foo" 33 Assistente, 
         Fisica "Bar" 40 Gerente, Juridica "Ci" 25]

ehFisica :: Pessoa -> Bool
ehFisica (Fisica _ _ _) = True
ehFisica _ = False