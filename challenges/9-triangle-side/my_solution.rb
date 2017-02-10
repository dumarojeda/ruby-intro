# Triangle Side

# Tu solucion abajo:
def valid_triangle?(a,b,c)
  if a > 0 && b > 0 && c > 0
    true
    if a + b > c && b + c > a && c + a > b
      true
    else
      false
    end
  else
    false
  end
end

valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides

valid_triangle?(1,1,1) # => true, an equilateral triangle

valid_triangle?(3,4,5) # => true, a right triangle
valid_triangle?(4,3,5) # => true, the same right triangle
valid_triangle?(5,3,4) # => true, the same right triangle

valid_triangle?(10, 10, 100) #=> false, no such triangle exists