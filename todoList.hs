import System.IO

mainLoop :: String -> IO ()
mainLoop dataBase = do
    putStrLn "Por favor, ingresa la descripción de la tarea y presiona Enter:"
    taskDescription <- getLine
    
    -- Abre el archivo en modo escritura, agrega la descripción y luego cierra el archivo.
    appendFile dataBase (taskDescription ++ "\n")
    
    readFile dataBase >>= putStrLn
    
    mainLoop dataBase

main :: IO ()
main = do
    putStrLn "Bienvenido a tu lista de tareas."
    mainLoop "db.txt"