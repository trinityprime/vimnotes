Merge Sort
----------
7 2 9 4 3 8 6 1

            7 2 9 4 | 3 8 6 1   
            /                \
Part 1: 7 2 | 9 4   Part 2: 3 8 | 6 1

Part 1:

7 | 2 --> 2 7

9 | 4 --> 4 9

7 2 | 9 4 --> 2 4 7 9


Part 2:

3 | 8 --> 3, 8

6 | 1 --> 1, 6

3 8 | 6 1 --> 1 3 6 8

New:
1 2 3 4 6 7 8 9 


Quick Sort
----------
Pivot will be first value 

*7* 2 9 4 3 7 6 1
7 = pivot value

So, group values < 7 at one side, values > 7 at other side

2 4 3 6 1 *7* 7 9 

Appoint another pivot point for each group (if needed)
Dont add pivot point when sorting btw!!

*2* 4 3 6 1       7 7 9

1 *2* 3 4 6       7 7 9 --> both are sorted now

Now, combine both 

1 2 3 4 6 7 7 9


Practice Questions:
-------------------
1. Sort in ascending order via quick sort

*4* 7 1 8 3 2 6 5

1 3 2 *4* 7 8 6 5 

*1* 3 2  *7* 8 6 5

*3* 2     8 *6* 5

2         5

1 2 3     5 6 7 8 

1 2 3 4 5 6 7 8


2. Sort in descending order via quick sort

*5* 2 7 8 1 4 6 3

7 8 6 *5* 2 1 4 3

*7* 8 6   *2* 1 4 3

*8* 6     *1* 4 3

6          *4* 3


8 7 6     4 3 2 1 

8 7 6 5 4 3 2 1 


3. Sort in ascending order via merge sort 

38 27 43 3 9 82 10

38 27 | 43 3 | 9 82 | 10

Part 1: 38 | 27  43 | 3  Part 2: 9 | 82   10

Part 1:

38 | 27 --> 27 38

43 | 3 --> 3 43

38 27 | 43 3 -->  3 27 38 43

Part 2:

9 | 82 --> 9 82

10 --> 10

9 | 82 10 --> 9 10 82

New:

3 9 10 27 38 43 82


4. Sort in descending order via merge sort

15 8 24 42 7 19 31 5

15 8 24 42 | 7 19 31 5

Part 1: 15 8 | 24 42  Part 2: 7 19 | 31 5

Part 1: 

15 | 8 --> 15 8 

24 | 42 --> 42 24

15 8 | 24 42 --> 42 24 15 8

Part 2:

7 | 19 --> 19 7

31 | 5 --> 31 5

7 19 | 31 5 --> 31 19 7 5

New:

42 31 24 19 15 8 7 5 


5. Sort in ascending order via quick sort

15 8 24 42 7 19 31 5

8 7 5 *15* 24 42 19 31

7 5 *8*   19 *24* 42 31

*7* 5     *19* 42 31

5         31 *42*
          
          21

5 7 8    19 21 31 42

5 7 8 15 19 21 31 42 


































































