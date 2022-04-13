-- ejercicios del wikibook 16/03/22 miercoles
--r = 5.0
--area = pi * (r * r)
-- y = x * 2 
--area r = pi * r ^ 2 
--double x = 2 * x 
--quadruple x = double (double x)
{-
    quadruple x = double ( 2 * x )
	        = 2 * (x)    	
	
-}
--square x = x * x
--half x = x / 2
--substract x = x/2 - 12 

--volumenCaja l a al = l * a * al
--x = 2521000
--y = 1.1304
--piedrasGiza = x / y
--r = 5
--areaCirculo r = pi * (r * r)
--volumenCilindro altura r = (areaCirculo r) * altura
{-
absolute x
    | x < 0 = 0 - x
    | otherwise = x


numOfRealSolutions a b c
    | disc > 0 = 2
    | disc == 0 = 1
    | otherwise = 0
        where 
	disc = b^2 - 4*a*c
-} 

{-

TOMAN UNA FUNCION COMO PRIMER ARGUMENTO (INT -> INT) Y LUEGO, TOMAN UN VALOR (INT -> INT)

func0 :: Int
func0 = 5
func1 :: Int -> Int
func1 a = a + 3
func :: (Int -> Int) -> (Int -> Int)
func x b = 34
 
func1' :: Int
func1' = 2
func0' :: Int -> Int
func0' a = 3
func' :: (Int -> Int) -> (Int -> Int)
func' func0' func1' = func1'


--c) (Int → Int) → (Int → Int) recibe una funcion y un valor , y devuelve un valor
func6 :: (Int -> Int) -> Int -> (Int -> Int)
func6 f z y = f 2 + z + y

--2) Dar al menos dos ejemplos de funciones que tengan cada uno de los siguientes tipos:
--a) (Int -> Int) → Int
func1'' :: (Int -> Int) -> Int
alter :: Int -> Int
alter x = x + 1
func1'' f = f 2 


func6 :: (Int -> Int) -> Int -> Int -> (Int -> Int)
func6 f x z y = f x + z + y
-}



-- --------------------------------------------------------------------------------------
{-
-- lists and tuples (chapter 6)
import Data.Char
import Data.List
testPermutations string = permutations string


numbers = [1,2,3,4]

cons8 :: [Int] -> [Int]
cons8 list = 8 : list

cons8' :: [Int] -> [Int]
cons8' list = list ++ [8]

myCons :: [Int] -> Int -> [Int]
myCons list thing = thing : list 

tuple = (("Hello",4), True)

funcList :: [Int] -> (Int,[Int])
funcList list = (head list , tail list)

lista = [2,3,1,5,3,4,6] -- hay que saber de antemano el largo de la lista, para poder escribir la funcion 
fifthElement :: [Int] -> Int
fifthElement list = head (tail (tail (tail (tail list))))

--ejemplo :: a -> b
--ejemplo x = x

h :: Int -> Int -> Int -> Char
h x y z = chr (x - 2)


-}

----------------------------------------------------------------------------------------------------

{-

-- type basics part 2 (chapter 7)

x = 2
y = x + 3.1

mySignum x =
	if x < 0
		then -1
		else if x > 0
			then 1 
			else 0

pts :: Int -> Int
pts 1 = 10
pts 2 = 6
pts x
    | x <= 6 && x > 0 = 7 - x
    | otherwise = 0

-}


----------------------------------------------------------------------------------------------------


--chapter 9,example (identation)
{-
roots a b c =
	let sdisc = sqrt (b * b - 4 * a * c)
	in  ((-b + sdisc) / (2 * a),
	     (-b - sdisc) / (2 * a))

-}


----------------------------------------------------------------------------------------------------


-- chapter 10 , basic IO
{-
main = do 
    putStrLn "enter your name : "
    name <- getLine
    putStrLn ("hello , " ++ name)	


main2 = do
    putStrLn "calculate the area of a rectangle"
    putStrLn "enter the base"
    base <- getLine
    let base2 = read base :: Int  -- funcion read : castea un string a un int
    putStrLn "enter the height"
    height <- getLine
    let height2 = read height :: Int   -- funcion read : castea un string a un int
    let area = base2 * height2
    let area2 = show area :: String  -- funcion show : castea un int a un string
    putStrLn ( "area of rectangle : " ++ area2 ) 	


main3 = do
    putStrLn "calculate the area of a rectangle"
    putStrLn "enter the base"
    base <- getLine
    putStrLn "enter the height"
    height <- getLine
    let area = show ((read base :: Int) * (read height :: Int)) :: String
    putStrLn ( "area of rectangle : " ++ area ) 


main4 = do
    putStrLn "calculate the area of a rectangle"
    putStrLn "enter the base"
    base <- getLine
    putStrLn "enter the height"
    height <- getLine
    let area = show ((read base :: Int) * (read height :: Int)) :: String
    --let area3 = (read base :: Int) * (read height :: Int) -- no puedo pasar un int a la funcion putStrLn 
    --let area2 = show area :: String  -- funcion show : castea un int a un string , 
    putStrLn ( "area of rectangle : " ++ area )




-- ejemplo del libro 

doGuessing num = do
    putStrLn "Enter your guess:"
    guess <- getLine
    if (read guess) < num
      then do putStrLn "Too low!"
              doGuessing num
    else if (read guess) > num
      then do putStrLn "Too high!"
              doGuessing num
    else putStrLn "You Win!"


-- ejercicio del libro 

askName = do
	putStrLn "enter a name : "	
	name <- getLine	
	if ( name == "Phil" || name == "Simon" || name == "John" )
	    then putStrLn "haskell is great!"
	else if ( name == "Koen" )  
	    then putStrLn "debugging haskell is fun!"
        else putStrLn "i dont know who that is"

-}




----------------------------------------------------------------------------------------------------


-- chapter 12 , Recursion 


factorial 0 = 1;
factorial x = x * factorial (x - 1)

doubleFactorial 0 = 1
doubleFactorial x = x * (x-2)


-- ejercicios

mult _ 0 = 0
mult n m = (mult n (m - 1)) + n

{- 
	mult 5 4 = ( mult 5 (3) ) + 5
	mult 5 3 = ( mult 5 (2) ) + 5
	mult 5 2 = ( mult 5 (1) ) + 5
	mult 5 1 = ( mult 5 (0) ) + 5
		 = (	0       ) + 5
	mult 5 2 = (    5       ) + 5
	mult 5 3 = (    10      ) + 5	
	mult 5 4 = (    15      ) + 5
	mult 5 4 =      20 	

-}  

-- 1)

power _ 0 = 1
power x y = ( power x (y-1) ) * x


-- 2)

plusOne  x   = x + 1 
addition x 0 = x  	   -- 5 + 1	
addition x y = addition ( plusOne x ) (y - 1)


{- 
	addition 5 3 = addition ( plusOne 5 ) (2)
	addition 5 2 = addition ( plusOne 6 ) (1)
	addition 5 1 = addition ( plusOne 7 ) (0)
	addition 5 0 =		      8	 		   
	addition 5 1 =                8  
	addition 5 2 =                8
	addition 5 3 =                8
  
-}


-- 3)

power' x = x * x
log2 1 1 = 0
log2 x y = if ( (power' x) <= y ) 
		then x
		else (log2 (x-1) y)
       	




----------------------------------------------------------------------------------------------------


-- list based recursion


replicate' :: Int -> a -> [a]
replicate' 1 b = [b]
replicate' x a = a : replicate' (x-1) a 	 
		   	

(!!!) :: [a] -> Int -> a
(!!!) (a:as) 0 = a

(!!!) (a:as) b = if (b == 0) 
		     then a
		     else (!!!) as (b-1)	



zip'  ::(Num a, Num b) => [a] -> [b] -> [(a, b)]

zip' [][]          = []
zip' [][b]         = [(0,b)]
zip' [a][]         = [(a,0)]

zip' (a:as) (b:bs) = if ((length (as)+1) /= 0 && (length (bs)+1) /= 0) 
		       	 then (a,b) : zip' as bs
		     else if ((length (as)+1) > (length (bs)+1))
			 then (a,b) : zip' as bs
		     else if ((length (as)+1) < (length (bs)+1))
			 then (a,b) : zip' as bs 
		     else [(a,b)]	   



{-
factorial' n = go n 1
    
    where 
    go n res
        | n > 1     = go (n - 1) (res * n)
        | otherwise = res

-}

length'' :: [a] -> Int
length''     []     = 0
length''    (a:as)  = run (a:as) 1
	
	where 
	run (a:as) acc     
	    |  (length as) > 0    = run ( as )(acc + 1)    
	    |  otherwise          = acc
	  
	    	


----------------------------------------------------------------------------------------------------


-- chapter 13 ,  lists part 2 , 

takeInt :: Int -> [Int] -> [Int]
takeInt _ []     = []
takeInt a (b:bs) = if (a /= 1) then 
		   b : takeInt (a-1) bs
 		   else b:[]


dropInt :: Int -> [Int] -> [Int]
dropInt _ []     = []
dropInt a (b:bs) = if (a /= 1) then 
		   dropInt (a-1) bs
 		   else bs


sumInt :: [Int] -> Int
sumInt []     = 0
sumInt (a:as) = a + sumInt as



-- COSTO,PERO SALIO
scanSum :: Int -> Int -> [Int] -> [Int]
scanSum _ _ []       = []
--scanSum i a []     = a : []
scanSum i a (b:as)   = if ( i == 0 ) then
		               a : (a + b) : ( scanSum (i+1) b as )   		  
		               else (a + b) : ( scanSum i b as)			 



















