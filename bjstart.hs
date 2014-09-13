module BlackJack where

import Cards
import Wrapper

--size hand2
--  = size (Add (Card (Numeric 2) Hearts) (Add (Card Jack Spades) Empty))
--  = 1 + size (Add (Card Jack Spades) Empty)
--  = 1 + 1 + size (Empty)
--  = 1 + 1 + 0
--  = 2

-- Task A (writing out what happens when executing the size function) and parts of Task B (implement the functions empty, value, gameOver, and winner).

empty :: Hand
empty = Empty

value :: Hand -> Integer
value (Card rank suit) = rank + (Card rank) empty

valueRank :: Rank -> Integer
valueRank (Numeric n) = n
valueRank Jack = 10
valueRank Queen = 10
valueRank King = 10
valueRank Ace = 11

valueCard :: Card -> Integer
valueCard (Card rank suit) = valueRank rank

numberOfAces :: Hand -> Integer
numberOfAces Empty = 0
numberOfAces (Add (Card Ace _) rest) = 1 + numberOfAces rest
numberOfAces (Add _ rest) = numberOfAces rest



--gameOver :: Hand -> Bool
-- value Hand | Hand > 21 = True
--            | Hand < 21 = False något sådant kanske? Eller är jag helt ute och cyklar?
--winner :: Hand -> Hand -> Player
--data Player = Guest | Bank
--              deriving (Show, Eq)
