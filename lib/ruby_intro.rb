# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)

  sum = 0
  arr.each { |x| sum = sum + x }
  sum

end

def max_2_sum arr
  
  if arr.length == 0 
    return 0

  elsif arr.length == 1
    return arr[0]

  else 
    arr.sort! 
    arr.reverse!
    arr[0] + arr[1]
  end

end

def sum_to_n? arr, n
  
  return false if arr.length < 2 
    
  i,j = 0,1

  while i < arr.length - 1 

    return true  if arr[i] + arr[j] == n

    if j == arr.length-1
      i = i+1
      j = i
    end

    j+=1

  end
  false

end

# Part 2

def hello(name)
  
  "Hello, "+name

end

def starts_with_consonant? s
  
  return false if s == '' 
  !(['a','e','i','o','u'].include?(s[0].downcase)) && /[a-z]/.match?(s[0].downcase)

end

def binary_multiple_of_4? s
  
    return false unless s.match?(/^[01]+$/)

    s.to_i(2) % 4 == 0

end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end

