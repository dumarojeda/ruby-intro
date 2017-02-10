# Calculate a Grade

# Tu solucion abajo:
def get_grade(note)
  if note >= 90
    "A"
  elsif note >= 80
    "B"
  elsif note >= 70
    "C"
  elsif note >= 60
    "D"
  else
    "F"
  end
end

get_grade(89) # => returns "B"
get_grade(70) # => returns "C"