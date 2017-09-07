# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  case arr.size
  when 0
    return 0
  when 1
    return arr[0]
  when 2
    return arr[0] + arr[1]
  else
    b = arr.max
    arr.delete_at(arr.index b)
    return b + arr.max
  end
end

def sum_to_n? arr, n
  return arr.permutation(2).any? { |p| p[0] + p[1] == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
   return false if s.length == 0
   return false if s[0].upcase.match(/\W/)
   vowels = "AEIOU"
   return true if not vowels.include? s[0].upcase
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
def initialize(isbn,price)
	raise ArgumentError, 'ISBN should not be empty' if isbn.size == 0
	raise ArgumentError, 'Price should be positive' if price <= 0
	@isbn = isbn
	@price = price
end
	
attr_accessor :isbn
attr_accessor :price
	
def price_as_string
	price = @price.to_s	
	dotPosition = price.index(".")
	if dotPosition == nil
		return "$" + price + ".00"
	elsif dotPosition == price.length - 2
		return "$" + price + "0"
	else
		return "$" + price
	end	
end
end
