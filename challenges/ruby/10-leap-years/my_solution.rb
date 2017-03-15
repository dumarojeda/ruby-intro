# Leap Years

# Tu solucion abajo:
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    true
  else
    false
  end
end

# def leap_year?(n)
#   if n % 4 == 0 && n % 100 == 0 && n % 400 != 0
#     false
#   elsif n % 400 == 0
#     true
#   elsif n % 4 == 0 && n % 100 == 0
#     true
#   elsif n % 4 == 0
#     true
#   else
#     false
#   end
# end
