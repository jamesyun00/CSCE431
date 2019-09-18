# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {|a| sum+=a}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    new_arr = arr.sort
   sum = new_arr[new_arr.size - 1] + new_arr[new_arr.size - 2]
 end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum = 0
  if arr.length == 0
    return false
  end
  if arr.combination(2).find {|x, y| (x + y) == n}
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[b-df-hj-np-tv-z]/i.match(s) != nil
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
    s =~ /^[01]*00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)  
    raise ArgumentError if (isbn.length == 0 || price <= 0)
    @isbn = isbn  
    @price = price
  end
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end

end
