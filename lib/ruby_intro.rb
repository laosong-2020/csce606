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
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
