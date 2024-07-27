Insertion Sort
--------------
- Basically go from left to right
- Each value compare with all values on left-hand side

Note:
- **DO NOT** only compare with adjacent value
eg. 

5 3 8 4 2

--> 3 5 8 4 2 

--> 3 5 8 4 2

--> 3 4 5 8 2 

--> 2 3 4 5 8 

Ans: 2 3 4 5 8

Descending:

--> 5 3 8 4 2

--> 8 5 3 4 2 

--> 8 5 4 3 2


Bubble Sort
-----------
- Iterate through entire list, compare adjacent values 

5 3 8 4 2

--> 3 5 4 2 8 (compare 5 & 3, 8 & 4, 8 & 2)

--> 3 4 2 5 8 (compare 5 & 4, 5 & 2)

--> 3 2 4 5 8 (compare 4 & 2)

--> 2 3 4 5 8 (compare 3 & 2)

Ans: 2 3 4 5 8

Descending:

--> 5 8 4 3 2 

--> 8 5 4 3 2


Selection Sort
--------------
- Find the minimum value in list and swap accordingly

5 3 8 4 2

--> 2 3 8 4 5 (swap 2 with 5, since 2 is smallest value)

--> 2 3 8 4 5 (no need swap, since 3 is in correct position)

--> 2 3 4 8 5 (swap 4 with 8)

--> 2 3 4 5 8 (swap 5 with 8)

Ans: 2 3 4 5 8


Descending:

--> 8 3 5 4 2

--> 8 5 3 4 2

--> 8 5 4 3 2



