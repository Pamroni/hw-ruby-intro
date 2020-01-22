# When done, submit this entire file to the autograder.
# Alex Ramponi
# CSCE 431-500
# 825004201

# Part 1
def sum arr
  #Just iterate through the array and add each element to the sum
  sum = 0
  for val in arr
  	sum = sum + val
  end
  sum
end

def max_2_sum arr
  #Sort the array
  sum = 0
  arr.sort!
  size = arr.length()

  #If there's more elements in the array than 2, add the two largest at the end
  if arr.length() > 2
  	sum = arr[size-1] + arr[size-2]
  else #If there are less than 2, just add them to 0
  	for val in arr
  		sum = sum + val
  	end
  end
  sum
end

def sum_to_n? arr, n
  sum_to_n = false
  #uses a loop with index to check if the elements add to n and they aren't the same element
  arr.each_with_index do | first, first_index |
    arr.each_with_index do | second, second_index |
      if (first+second==n) && (first_index!=second_index)
        sum_to_n = true
      end
    end
  end
  sum_to_n
end


# Part 2
def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  starts_with_consonant = false
  first_letter = s[0]
  if first_letter == nil
    starts_with_consonant = false
  else
    #checks that it's not a vowel as well as it's a letter
    starts_with_consonant = first_letter.downcase != "a" && \
                            first_letter.downcase != "e" && \
                            first_letter.downcase != "i" && \
                            first_letter.downcase != "o" && \
                            first_letter.downcase != "u" && \
                            first_letter =~ /[A-Za-z]/ 
  end
  starts_with_consonant
end

def binary_multiple_of_4? s
  multiple_of_4 = false
  #First check that it's all 1s or 0s
  #Checking for the false case where it's 1 or more non 1 or 0
  #Double negative == positive
  if s =~ /^[0-1]{1,}$/
    #Then we just convert and see if it's a multiple of 4
    binary_value = s.to_i(2)
    if binary_value % 4 == 0
      multiple_of_4 = true
    end
  end
  multiple_of_4
end


# Part 3
class BookInStock
  def initialize(isbn,price)
    if isbn != ""
      @isbn = isbn
    else
      raise ArgumentError.new("ISBN can't be empty")
    end

    if price > 0.0
      @price = price
    else
      raise ArgumentError.new("Price can't be 0 or less than 0")
    end
  end

  #Getters
  def isbn
    @isbn
  end

  def price
    @price
  end

  #Setters
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  #Round the float to 2 decimals and add the $ sign
  def price_as_string
    "$"+"%.2f" % @price
  end
end
