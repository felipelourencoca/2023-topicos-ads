import Distribution.Compat.Binary (Binary)

data Arvore a = Nulo 
            | Galho a (Arvore a) (Arvore a) 
            | Folha a deriving Show


elementosArvore :: Arvore Integer
elementosArvore = Galho 10 (Galho 4 (Galho 33 Nulo Nulo) (Folha 5)) (Folha 40)

mostraElementosVetor :: Arvore a -> [a]
mostraElementosVetor Nulo      =  []
mostraElementosVetor (Folha x) = [x] 
mostraElementosVetor (Galho x esquerda direita) 
    = mostraElementosVetor esquerda ++ [x] ++ mostraElementosVetor direita 


-- restrições em funções.

instance Num Bool where
    (+) x y = True


instance Num Char where
    (+) x y = 'z'

soma :: (Num a) => a -> a -> a
soma x y = x + y


somaDoDoidao :: (Ord a,Num a) => a -> a -> a
somaDoDoidao x y = x + y


class SimNao a where
    simnao :: a -> Bool


instance SimNao Int where
    simnao x 
        | x >= 18 = True
        | otherwise = False

instance SimNao [a] where
    simnao x 
        | null [] = False
        | otherwise = True




-- type classes de


{-
class Num a where
    (+) :: a -> a -> a
-}
