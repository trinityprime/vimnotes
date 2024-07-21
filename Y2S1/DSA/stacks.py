STACK IMPLEMENTATION
--------------------
class Stack:
    # Creates an empty stack.
    def __init__( self ):
        self._theItems = list()


    # Returns True if the stack is empty or False otherwise.
    def isEmpty( self ):
        return len(self._theItems) == 0
                                                   
                                                   
    # Returns the number of items in the stack.
    def __len__ ( self ):
        return len(self._theItems)
                                                                  
                                                                  
    # Returns the top item on the stack without removing it.
    def peek( self ):
        assert not self.isEmpty(), \
        "Cannot peek at an empty stack"
        return self._theItems[-1]

    
    # Removes and returns the top item on the stack.
    def pop( self ):
        assert not self.isEmpty(), \
        "Cannot pop from an empty stack"
        return self._theItems.pop()


    # Push an item onto the top of the stack.
    def push( self, item ):
        self._theItems.append(item)


Postfix
-------
- Basically operators at the back

eg1. A * B + C / D (infix --> postfix)

1. A * B + C / D

2. (( A * B ) + ( C / D )) --> put brackets around every group of operators

3. ((A B *) (C D /) +) --> shift operators in each bracket to the back

4. A B * C D / + 


eg2. A * ( B + C ) / D

1. A * ( B + C ) / D

2. ( ( A * ( B + C ) ) / D )

3. ( ( A ( B C + ) * ) D / )

4. A B C + * D /


Prefix 
------
- Basically operators infront 


Infix 
-----
- Basically normal equations lah 



PRACTICE QNS
-------------

Q1. (X – 5) + (7 * Z) / V 

Postfix:

(X - 5) + ((7 * Z) / V )
((X - 5) + ((7 * Z) / V))
((X 5 -) ((7 Z *) V / ) + )

X 5 - 7 Z * V / +

Prefix

(X - 5) + ((7 * Z) / V )
((X - 5) + ((7 * Z) / V ))
(+ (- X 5) ( / (* 7 Z) V))

+ - X 5 / * 7 Z V


Q2. Trace, evaluate postfix expression 25 4 * 20 15 - / 2 / 18 +

               15
    4      20  20   5  2 18
25 25 100 100 100 100 20 10 28

Ans: 28

Q3 Trace, evaluate prefix expression / + - 6 2 * 3 4 2 (do backwards for prefix)

             6
    3     2  2  4 
  4 4 12 12 12 12 16
2 2 2  2  2  2  2  2 8

Ans: 8


Q4. V * W * 8 + Y - Z

Prefix

(V * W) * 8 + Y - Z
((((V * W) * 8) + Y) - Z)
( - ( + ( * ( * V W) 8) Y) Z)

- + * * V W 8 Y Z

Postfix

((((V * W) * 8) + Y) - Z)
((((V W *) 8 *) Y + ) Z - )

V W * 8 * Y + Z -


Q5 A / B * C - D + E

Prefix

((((A / B) * C) - D) + E)

(+ (- ( * (/ A B) C) D) E)

+ - * / A B C D E

Postfix

((((A / B) * C) - D) + E)
((((A B /) C *) D -) E +)

A B / C * D - E +


Q6 Trace, evaluate postfix expression 15 3 / 5 10 - / 100 ^

          10
    3   5  5 -5 100
15 15 5 5  5  5  -1 1

Ans: 1


Q7 Trace, evaluate prefix expression + / * - 32 5 5 6 21
            
             32
          5   5  27  
       5  5   5   5  135  
    6  6  6   6   6    6  22.5 
21 21 21 21  21  21   21    21 43.5   

Ans: 43.5















