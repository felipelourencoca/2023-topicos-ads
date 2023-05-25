

newtype Sum a = Sum{getSum::a} deriving (Show,Eq)

newtype Product a = Product{getProduct::a}

{-
instance (Num a,Fractional a) => Semigroup (Sum a) where
    (<>) (Sum x) (Sum y) = Sum (x + y)
-}

instance (Num a) => Semigroup (Sum a) where
    (<>) (Sum x) (Sum y) = Sum (x + y)

instance (Num a) => Monoid (Sum a) where
    mempty = Sum 0
    mappend = (<>)
  

data GuerreirosZ = Goten | Trunks | Goku | Vegeta | Gotrunks deriving Show


instance Semigroup GuerreirosZ where
    Goten <> Trunks = Gotrunks
 

foo :: GuerreirosZ -> GuerreirosZ
foo (Trunks) = Trunks