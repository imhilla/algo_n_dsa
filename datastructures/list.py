# append list.append(x) add an item to the end of the list a[len(a):] = [x]
# extend list.extend(iterable) extend the list by appending all items from the iterable
# insert list.insert(i, x)
# list.remove(x)
# list.pop([i])
# list.clear() eqv del a[:]
# list.index()
# list.count()
# list.sort()
# list.reverse()
# list.copy()

from collections import deque
fruits = ['orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana']
print(fruits.count('apple'))
# 2
print(fruits.count('tangerine'))
# 0
print(fruits.index('banana'))
# 3
print(fruits.index('banana', 4))
# 6 find next banana startinmg at position 4
fruits.reverse()
print(fruits)
fruits.append('grape')
print(fruits)
fruits.sort()
print(fruits)
print(fruits.pop())
print(fruits)

# Using Lists as Stack
# last in first out
# use append to add a list to the top of the stack append() use pop() to retrieve an item from the top of the list
stack = [3, 4, 5]
stack.append(6)
stack.append(7)
print(stack)
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack)

# using lists as queues
# first element added is the first element retrieved first in first out
# lists are not efficient for this purpose, doing inserts or pops from the beginning of the list is slow
# to implement queue use collections.deque
queue = deque(["Eric", "John", "Michael"])
queue.append("Terry")
queue.append("Graham")
queue.popleft()
print(queue)
