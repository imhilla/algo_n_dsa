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

def rec_test(n)
  if n < 2
    n
  else
    rec_test(n-1) + rec_test(n-2)
  end
end

puts rec_test(5)
puts rec_test(6)

def flatten_array(array, result=[])
  array.each do | element |
    if element.kind_of?(Array)
      flatten_array(element, result)
    else
      result << element
    end
  end
  result
end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def integer_to_roman(roman_mapping, number, result="")
  return result if number == 0
  roman_mapping.keys.each do | divisor |
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

puts integer_to_roman(roman_mapping, 38)

roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def roman_to_integer(roman_mapping, str, result = 0)
  return result if str.empty?
  roman_mapping.keys.each do |roman|
    if str.start_with?(roman)
      result += roman_mapping[roman]
      str = str.slice(roman.length, str.length)
      return roman_to_integer(roman_mapping, str, result)
    end
  end
end

puts roman_to_integer(roman_mapping, 'XXXVIII')