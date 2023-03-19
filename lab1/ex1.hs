-- Приведите пример нетривиальных выражений, принадлежащих следующему типу:
-- 1) ((Char,Integer), String, [Double])
(('a', 1), "Hello", [1.0, 2.0, 3.0])
-- 2) [(Double,Bool,(String,Integer))]
[(1.0, True, ("Hello", 1)), (2.0, False, ("World", 2))]
-- 3) ([Integer],[Double],[(Bool,Char)])
([1,2,3], [1.0, 2.0, 3.0], [(True, 'a'), (False, 'b')])
-- 4) [[[(Integer,Bool)]]]
[[[(1, True), (2, False)]]]
-- 5) (((Char,Char),Char),[String])
((('a', 'b'), 'c'), ["Hello", "World"])
-- 6) (([Double],[Bool]),[Integer])
(([1.0, 2.0, 3.0], [True, False]), [1, 2, 3])
-- 7) [Integer, (Integer,[Bool])]
[1, (2, [True, False])]   
-- 8) (Bool,([Bool],[Integer]))
(True, ([True, False], [1, 2, 3]))
-- 9) [([Bool],[Double])]
[([True, False], [1.0, 2.0, 3.0])]
-- 10) [([Integer],[Char])]
[([1, 2, 3], ['a', 'b', 'c'])] 