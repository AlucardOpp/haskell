-- stack ex2.hs 5 6 7
import System.Environment(getArgs)

-- getArgs - это функция, которая возвращает список аргументов командной строки
main = do
  args <- getArgs
  print args