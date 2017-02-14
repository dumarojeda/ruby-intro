# Count Between

# Tu solucion abajo:
def count_between(array, numinf, numsup)
  if array.empty?
    return 0
  else
    array.count{|x| x >= numinf && x <= numsup }
  end
end