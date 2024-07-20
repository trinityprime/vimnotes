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
1. Sort in ascending order

*4* 7 1 8 3 2 6 5

1 3 2 *4* 7 8 6 5 

*1* 3 2  *7* 8 6 5

*3* 2     8 *6* 5

2         5

1 2 3     5 6 7 8 

1 2 3 4 5 6 7 8


2. Sort in descending order

*5* 2 7 8 1 4 6 3

7 8 6 *5* 2 1 4 3

*7* 8 6   *2* 1 4 3

*8* 6     *1* 4 3

6          *4* 3


8 7 6     4 3 2 1 

8 7 6 5 4 3 2 1 


















































