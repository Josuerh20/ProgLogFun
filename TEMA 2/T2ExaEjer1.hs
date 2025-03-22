-- ================================================
--                   EJERCICIO 1
--     JOSUE RAMÍREZ HERNÁNDEZ N.C. 21200990
--    GERMAN EDUARDO ZERÓN LÓPEZ N.C. 21200642
-- ================================================

import Data.Maybe (fromMaybe)

-- Definimos los tipos para nodos y el grafo
type Node = Int
type Graph = [(Node, [Node])]

-- Función para obtener los vecinos de un nodo en el grafo
neighbors :: Node -> Graph -> [Node]
neighbors node graph = fromMaybe [] (lookup node graph)

-- Función BFS para recorrer el grafo
bfs :: Graph -> Node -> [Node]
bfs graph start = bfsAux [start] [] graph

-- Función auxiliar para BFS
bfsAux :: [Node] -> [Node] -> Graph -> [Node]
bfsAux [] visited _ = visited
bfsAux (n:queue) visited graph
    | n `elem` visited = bfsAux queue visited graph  -- Si ya está visitado, continuar
    | otherwise = bfsAux (queue ++ nuevos) (visited ++ [n]) graph
  where
    nuevos = filter (`notElem` visited) (neighbors n graph)

-- Definimos el grafo del ejercicio con una lista
graphExample :: Graph
graphExample =
    [ (1, [2, 3])
    , (2, [1, 4, 5])  
    , (3, [1, 4, 5])  
    , (4, [2, 3])  
    , (5, [2, 3]) 
    ]

-- Función principal para mostrar el recorrido BFS desde el nodo 1
main :: IO ()
main = do
    putStrLn "Grafo no dirigido, del ejercicio:"
    print graphExample
    putStrLn "\nRecorrido BFS desde el nodo 1:"
    print (bfs graphExample 1)

