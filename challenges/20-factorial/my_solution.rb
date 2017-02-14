# Factorial


# Tu solucion abajo:
def factorial(number)
  if number <= 1
    1
  else
    (1..number).inject(:*)
  end
end