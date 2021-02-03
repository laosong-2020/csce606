# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |i|
    sum += i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if 0 == arr.size
    return 0
  end
  if 1 == arr.size
    return arr[0]
  end
  arr = arr.sort
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  list = Hash.new
  return false if arr.size==0 && n == 0
  
  arr.each do |i|
    if list.key? i
      return true
    else
      list[n-i] = i
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0 
    return false
  end
  if s[0].match(/^[[:alpha:]]$/) and !['A','E','I','O','U'].include?(s[0].upcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.size == 0
    return false
  end
  if s.count('0') + s.count('1') != s.size
    return false
  end
  
  value = s.to_i(2)
  if value % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor:isbn
  attr_accessor:price

  def initialize(isbn, price)
    if isbn.size == 0 or price <= 0
      raise ArgumentError, "Invalid Input\n"
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f"%@price.to_f()
  end
end
