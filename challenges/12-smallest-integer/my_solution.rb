# Smallest Integer



# Tu solucion abajo:
def smallest_integer(numbers)
  numbers.sort!
  numbers.first
end

smallest_integer([1, 2, 3])       # => 1
smallest_integer([0, -10, 10])    # => -10
smallest_integer([-10, -20, -30]) # => -30