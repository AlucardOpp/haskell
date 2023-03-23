-- Определим следующий набор операций над строками:
-- Очистка: удаление всех символов из строки
-- Удаление: удаление всех вхождений указанного символа
-- Замена: замена всех вхождений одного символа на другой
-- Добавление: добавление в начало строки указанного символа
-- Разработайте тип данных, характеризующий операции над строками. Определите следующие функции:
-- 1) process, получающая в качестве аргумента действие и строку и возвращающая строку, модифицированную в соответствие с указанным действием.
-- 2) processAll, аналогичная предыдущей, но получающая список действий и выполняющая их по порядку.
-- 3) deleteAll, принимающая две строки и удаляющей из второй строки все символы первой. При реализации обязательно использовать функцию processAll.

-- data - это ключевое слово, которое используется для определения нового типа данных
-- Action - это имя типа данных
data Action = Clear | Delete Char | Substitute Char Char | Add Char

-- process - это функция, которая принимает на вход действие и строку и возвращает строку, модифицированную в соответствие с указанным действием
process :: Action -> String -> String
-- process Clear xs - это определение функции process, которая принимает на вход действие Clear и строку и возвращает пустую строку
process Clear xs = ""
-- process (Delete c) xs - это определение функции process, которая принимает на вход действие Delete c и строку и возвращает строку, в которой удалены все вхождения символа c.
-- : - это оператор, который используется для конкатенации двух списков (строк) или добавления элемента в начало списка (строки)
process (Delete c) xs = if xs == "" then "" else if head xs == c then process (Delete c) (tail xs) else head xs : process (Delete c) (tail xs)
-- process (Substitute c d) xs - это определение функции process, которая принимает на вход действие Substitute c d и строку и возвращает строку, в которой заменены все вхождения символа c на символ d
process (Substitute c d) xs = if xs == "" then "" else if head xs == c then d : process (Substitute c d) (tail xs) else head xs : process (Substitute c d) (tail xs)
-- process (Add c) xs - это определение функции process, которая принимает на вход действие Add c и строку и возвращает строку, в которой добавлен символ c в начало строки
process (Add c) xs = c : xs

-- processAll - это функция, которая принимает на вход список действий и выполняет их по порядку
processAll :: [Action] -> String -> String
-- processAll [] xs - это определение функции processAll, которая принимает на вход пустой список действий и строку и возвращает строку
processAll [] xs = xs
-- processAll (x:xs) ys - это определение функции processAll, которая принимает на вход список действий и строку и возвращает строку, модифицированную в соответствие с указанным списком действий
processAll (x:xs) ys = processAll xs (process x ys)

-- deleteAll - это функция, которая принимает на вход две строки и удаляет из второй строки все символы первой
deleteAll :: String -> String -> String
-- deleteAll xs ys - это определение функции deleteAll, которая принимает на вход две строки и удаляет из второй строки все символы первой
-- reverse - это функция, которая принимает на вход список и возвращает список, в котором элементы идут в обратном порядке
-- deleteAll' - это вспомогательная функция, которая принимает на вход строку и возвращает список действий, в котором каждое действие Delete c, где c - символ строки
deleteAll xs ys = processAll (reverse (deleteAll' xs)) ys
  where
    deleteAll' :: String -> [Action]
    deleteAll' [] = []
    deleteAll' (x:xs) = Delete x : deleteAll' xs

main =
  print (process Clear "Hello world!") >>
  print (process (Delete 'l') "Hello world!") >>
  print (process (Substitute 'e' 'i') "eigenvalue") >>
  print (process (Add 'a') "Hello world!") >>
  print (processAll [Clear, Delete 'l', Substitute 'e' 'i', Add 'a'] "eigenvalue") >>
  print (deleteAll "Hello world!" "Hello world!")