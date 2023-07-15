# Inception all over again, recursion, Factorials and Fibonacci in Ruby
# recusrcions happen when a method calls on itself inside itself

def factorial(n)
  (1..n).inject { | product, n | product * n}
end

puts factorial(5)

def recursive_factorial(n)
  if n == 0
    1
  else
    n * recursive_factorial(n-1)
  end
end

puts recursive_factorial(5)

# fibonacci sequence
# first two numbers are 0 and 1

def fibonacci(n) #without recursion
  sequence = []
  (0..n).each do |n|
    if n < 2
      sequence << n 
    else
      sequence << sequence[-1] + sequence[-2]
    end
  end
  sequence.last
end

puts fibonacci(6)

def rec_fibonacci(n)
  if n < 2
    n 
  else
    rec_fibonacci(n-1) + rec_fibonacci(n-2)
  end
end

puts rec_fibonacci(6)

def palindrome(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end

puts palindrome('aba')

def bottles(n)
  if n == 0
    puts 'no more bottles of beer on the wall'
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n-1)
  end
end

puts bottles(5)