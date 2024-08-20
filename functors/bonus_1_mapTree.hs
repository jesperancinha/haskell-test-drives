data Tree a = Leaf a | Node (Tree a) (Tree a)
    deriving (Show, Eq)

instance Functor Tree where
    fmap f (Leaf x) = Leaf (f x)
    fmap f (Node left right) = Node (fmap f left) (fmap f right)

buildTree :: IO (Tree Int)
buildTree = do
    putStrLn "Enter value for the left node leaf:"
    leftNodeLeftLeafValue <- readLn
    putStrLn "Enter value for the right node left leaf:"
    rightNodeLeftLeafValue <- readLn
    putStrLn "Enter value for the right node right leaf:"
    rightNodeRightLeafValue <- readLn
    let tree = Node (Leaf leftNodeLeftLeafValue) (Node (Leaf rightNodeLeftLeafValue) (Leaf rightNodeRightLeafValue))
    return tree

main :: IO ()
main = do
    tree <- buildTree
    putStrLn "Original tree:"
    print tree
    putStrLn "Enter a number to add to each element of the tree:"
    num <- readLn
    let updatedTree = fmap (+num) tree
    putStrLn "Updated tree:"
    print updatedTree
