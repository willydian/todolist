import System.IO

mainLoop :: String -> IO ()
mainLoop dbFileName = do
    putStrLn "Por favor, ingresa la descripción de la tarea y presiona Enter:"
    taskDescription <- getLine
    appendFile dbFileName (taskDescription ++ "\n")
    putStrLn "\nLista de tareas:"
    showFileContentWithNumbers dbFileName
    mainLoop dbFileName

showFileContentWithNumbers :: String -> IO ()
showFileContentWithNumbers dbFileName = do
    fileContent <- readFile dbFileName
    let tasks = lines fileContent
    mapM_ (\(index, task) -> putStrLn (show index ++ ". " ++ task)) (zip [1..] tasks)

main :: IO ()
main = do
    putStrLn "Bienvenido a tu lista de tareas."
    mainLoop "db.txt"
