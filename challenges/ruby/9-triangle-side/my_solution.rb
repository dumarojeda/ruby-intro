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

# def valid_triangle?(x,y,z)
#   if x <= 0 && y <= 0 && z <= 0
#     false
#   elsif (x + y) <= z || (x + z) <= y || (y + z) <= x
#     false
#   else
#     true
#   end
# end


# def valid_triangle?(a, b, c)
#   if (a+b>c) && (a+c>b) && (b+c>a)
#     true
#   else
#     false
#   end
# end


valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides
valid_triangle?(1,1,1) # => true, an equilateral triangle

valid_triangle?(3,4,5) # => true, a right triangle
valid_triangle?(4,3,5) # => true, the same right triangle
valid_triangle?(5,3,4) # => true, the same right triangle

valid_triangle?(10, 10, 100) #=> false, no such triangle exists



