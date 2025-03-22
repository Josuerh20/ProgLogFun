-- ================================================
--                   EJERCICIO 2
--     JOSUE RAMÍREZ HERNÁNDEZ N.C. 21200990
--    GERMAN EDUARDO ZERÓN LÓPEZ N.C. 21200642
-- ================================================

import Data.List (uncons)

-- Función principal que ejecuta todas las operaciones
main :: IO ()
main = do
    -- Definición de una lista de enteros con 10 elementos
    let lista = [12, 15, 29, 30, 34, 45, 46, 58, 97, 110]

    -- CONCATENACIÓN DE LISTAS
    putStrLn "===== CONCATENACIÓN ====="
    let listaConcatenada = lista ++ lista
    putStrLn $ "Lista concatenada: " ++ show listaConcatenada

    -- PRIMER Y ÚLTIMO ELEMENTO (manejo seguro de listas vacías)
    putStrLn "\n===== PRIMER Y ÚLTIMO ELEMENTO ====="
    case uncons lista of
        Nothing -> putStrLn "La lista está vacía, no hay elementos."
        Just (primero, resto) -> putStrLn $ "Primer elemento: " ++ show primero 
                                           ++ "\nÚltimo elemento: " ++ show (last lista)

    -- FILTRADO DE NÚMEROS PARES
    putStrLn "\n===== NÚMEROS PARES ====="
    let numerosPares = filter even lista
    putStrLn $ "Elementos pares: " ++ show numerosPares

    -- MAPEO: ELEVAR NÚMEROS AL CUADRADO
    putStrLn "\n===== MAPEO (CUADRADOS) ====="
    let cuadrados = map (^2) lista
    putStrLn $ "Elementos elevados al cuadrado: " ++ show cuadrados

