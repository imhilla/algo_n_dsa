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