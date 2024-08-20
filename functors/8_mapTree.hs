data Tree a = Leaf a | Node (Tree a) (Tree a)
    deriving (Show, Eq)

instance Functor Tree where
    fmap f (Leaf x) = Leaf (f x)
    fmap f (Node left right) = Node (fmap f left) (fmap f right)

main :: IO ()
main = do
    let tree = Node (Leaf 1) (Leaf 2)
    print $ fmap (+1) tree
