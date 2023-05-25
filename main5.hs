{-
data Caixa a where:r

  UmaCaixa :: a -> Caixa a
  DuasCaixas :: a -> a -> Caixa a
-}

--data Caixa a b  = UmaCaixa a | DuasCaixas a b deriving Show

data Lista a = Nulo | No a (Lista a) deriving Show  
--data Lista a = Nulo |  a :>: (Lista a) deriving Show   

elementosTipoLista = No 10 (No 103 (No 4 Nulo))

--Em Ordem
criaLista :: Lista a -> [a]
criaLista Nulo = []
criaLista (No valor proximo) = valor : criaLista proximo

data Pessoa = Fisica | Juridica deriving (Show)

buscarElemento :: (Eq a) => Lista a -> a -> Bool
buscarElemento Nulo _ = False
buscarElemento (No valor proximo) valorBusca 
    | valor == valorBusca = True
    | otherwise = buscarElemento proximo valorBusca

inserirElementoFinalLista :: Lista a -> a -> Lista a
inserirElementoFinalLista Nulo valor = No valor Nulo
inserirElementoFinalLista (No valor prox) valorInserir =
     No valor (inserirElementoFinalLista prox valorInserir)

--  No 10 (No 103 (No 4 Nulo))
-- inserirElementoFinalLista No 10 (No 103 (No 4 Nulo)) 33 =
{-
 No 10 (inserirElementoFinalLista prox valorInserir) = 
 No 103 (inserirElementoFinalLista prox valorInserir) =
 No 4 (inserirElementoFinalLista prox valorInserir) =
 No nulo = No valor Nulo = No 33 Nulo =
         No 10 (No 103 (No 4 (No 33 Nulo)))
-}

{- No 10 (No 103 (No 4 Nulo))

 No 10 (inserirElementoFinalLista (No 103 (No 4 Nulo)) 33) = 
 No 103 (inserirElementoFinalLista (No 4 Nulo) 33) =
 No 4 (inserirElementoFinalLista Nulo 33) =
 Nulo 33 = No 33 Nulo =
         No 10 (No 103 (No 4 (No 33 Nulo)))
-}


{-

function fat(int n){
    if(n <= 1){
        return 1;
    }
    return n * fat(n1);
}

-}