main = do
  -- putStrLn - это функция, которая принимает на вход строку и выводит ее на экран
  putStrLn "Enter file name:"
  -- name - это переменная, которая принимает значение вводимой строки
  -- getLine - это запрос на ввод строки
  name <- getLine
  -- putStrLn - это функция, которая принимает на вход строку и выводит ее на экран
  putStrLn "Enter number of lines:"
  -- n - это переменная, которая принимает значение вводимой строки
  -- getLine - это запрос на ввод строки
  n <- getLine
  -- content - это переменная, которая принимает значение содержимого файла
  -- readFile - это функция, которая принимает на вход имя файла и возвращает его содержимое
  content <- readFile name
  -- putStrLn - это функция, которая принимает на вход строку и выводит ее на экран
  -- unlines - это функция, которая принимает на вход список строк и возвращает их объединение
  -- take - это функция, которая принимает на вход число n и список и возвращает первые n элементов списка
  -- read n - это функция, которая принимает на вход строку и возвращает число
  -- lines - это функция, которая принимает на вход строку и возвращает список строк
  putStrLn (unlines (take (read n) (lines content)))