# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.max(2).sum()
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return arr.combination(2).to_a.any?{|a| a.sum() == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE\
  return !!(s =~ /\A[[^aeiou]&&[a-z]]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == '0'
  return !!(s =~ /\A[01]*00\z/)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty string' if isbn.length == 0
    raise ArgumentError, 'Price cannot be less than or equal 0' if price <= 0
    
    @book_isbn = isbn
    @book_price = price
  end
  
  def isbn()
    return @book_isbn
  end
  
  def isbn=(isbn)
    @book_isbn = isbn
  end
  
  def price()
    return @book_price
  end
  
  def price=(price)
    @book_price = price
  end
  
  def price_as_string()
    return '$%0.2f' % @book_price
  end
  
end
