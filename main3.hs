{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}


data Peca = Bateria {capacidade::Int} 
                | Tela {tamanho :: Float} deriving Show

data Marca = Samsung | Apple | Xiaomi deriving Show
data Celular = Celular 
                {marca::Marca, 
                pecas::[Peca]} deriving Show

mostraMarca :: Celular -> [Peca]
mostraMarca (Celular marca (x:xs))  = xs

celulares = [Celular Samsung [Bateria 4000,Tela 5.5],
             Celular Apple [Bateria 5000,Tela 6]]

celular = Celular Samsung [Bateria 400,Tela 5.5]



