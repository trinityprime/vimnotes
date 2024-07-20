TUTORIAL:

Note:
enqueue = put into queue (from infront)
dequeue = take away from queue (from behind)

Queue to stack = take from back first 
Stack to queue = take from front first

eg. queue 1,2,3,4 --> 4,3,2,1 stack
    stack 4,3,2,1 --> 1,2,3,4 queue

------------------------------

1. Write out the content of the resulting queue after the following code is executed:

myQueue = Queue()
for i in range( 16 ):
    if i % 3 == 0:
        myQueue.enqueue(i)

Output:
[0]: 0, [1]: 3, [2]: 6, [3]: 9, [4]: 12, [5]: 15


myQueue = Queue()
for i in range( 16 ):
    if i % 3 == 0:
        myQueue.enqueue(i)
    elif i % 4 == 0:
        myQueue.dequeue() Note: usually assigned to a variable eg. var = myQueue.dequeue()

Output:
[0]: 6, [1]: 9, [2]: 12, [3]: 15


myQueue = Queue()
for i in range( 16 ):
    if i % 3 == 0:
        myQueue.enqueue(i)
        myQueue.enqueue(i + 1)
    elif i % 4 == 0:
        myQueue.dequeue()

Output:
[0]: 3, [1]: 4, [2]: 6, [3]: 7, [4]: 9, [5]: 10, [6]: 12, [7]: 13, [8]: 15, [9]: 16


myQueue = Queue()
for i in range( 16 ):
    if i % 4 == 0:
        myQueue.dequeue()
    elif i % 3 == 0:
        myQueue.enqueue(i)

Output:

0 4 8 12 
0 3 6 9 12 15

3 12 15



2. Write a Python function – reverseQueue(Q) with no more than 6 lines of code, that reverses the order of the items in a queue. 
Your solution may only use the methods defined by the Queue ADT, but you are free to use other data structures if necessary


3. 
A double-ended queue, or deque (pronounced as “deck” to avoid confusion with the dequeue method of the regular Queue ADT) is a queue-like data structure that support insertion and deletion at both the front and the back of the queue. Define a Deque ADT by listing and describing the methods that should be supported by a Deque





Practical
---------

class Queue:

    # Creates an empty queue.
    def __init__( self ):
        self._qList = list()

    # Returns True if the queue is empty.
    def isEmpty( self ):
        if len(self._qList) == 0:
            return True
        else:
            return False

    def __len__( self ):
        return len(self._qList)

    # Adds the given item to the queue.
    def enqueue( self, item ):
        self._qList.append(item)

    # Removes and returns the first item in the queue.
    def dequeue( self ):
        assert not self.isEmpty(), "Cannot dequeue from empty queue"
        return self._qList.pop(0)

    # MUST DEFINE THIS FUNCTION
    def __str__(self):
        return str(self._qList)


queue = Queue()
print(len(queue))
print(queue.isEmpty())
queue.enqueue("aa")
queue.enqueue("bb")
queue.enqueue("cc")
print(len(queue))
print(queue.isEmpty())
xx = queue.dequeue()
print(xx)
print(queue)

output:
0
True
3
False
aa
['bb', 'cc']











