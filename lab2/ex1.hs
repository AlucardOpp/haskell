-- Определите функцию, принимающую на вход целое число n и возвращающую список, содержащий n элементов, упорядоченных по возрастанию.
-- 1) Список натуральных чисел.
intList :: Int -> [Int]
intList n = [1..n]
-- 2) Список нечетных натуральных чисел.
oddList :: Int -> [Int]
oddList n = [1, 3..n]
-- 3) Список четных натуральных чисел.
evenList :: Int -> [Int]
evenList n = [2, 4..n]
-- 4) Список квадратов натуральных чисел.
-- x ^ 2 | x <- [1..n] - это генератор списка (list comprehension) в Haskell
-- x ^ 2 - это выражение, которое будет вычислено для каждого элемента списка
-- x <- [1..n] - это генератор списка, который генерирует список элементов, для которых будет вычислено выражение x ^ 2
squareList :: Int -> [Int]
squareList n = [x ^ 2 | x <- [1..n]]
-- 5) Список факториалов.
-- product [1..x] - это функция, которая вычисляет произведение элементов списка
-- [1..x] - это список элементов, произведение которых будет вычислено функцией product
factorialList :: Int -> [Int]
factorialList n = [product [1..x] | x <- [1..n]]
-- 6) Список степеней двойки.
powerOfTwoList :: Int -> [Int]
powerOfTwoList n = [2 ^ x | x <- [1..n]]
-- 7) Список треугольных чисел.
-- sum [1..x] - это функция, которая вычисляет сумму элементов списка
triangleList :: Int -> [Int]
triangleList n = [sum [1..x] | x <- [1..n]]
-- 8) Список пирамидальных чисел.
-- 'div' - это оператор целочисленного деления
pyramidList :: Int -> [Int]
pyramidList n = [x * (x + 1) * (x + 2) `div` 6 | x <- [1..n]]

main = do
  print "Int list:"
  print $ intList 10
  print "Odd list:"
  print $ oddList 10
  print "Even list:"
  print $ evenList 10
  print "Square list:"
  print $ squareList 10
  print "Factorial list:"
  print $ factorialList 10
  print "Power of two list:"
  print $ powerOfTwoList 10
  print "Triangle list:"
  print $ triangleList 10
  print "Pyramid list:"
  print $ pyramidList 10