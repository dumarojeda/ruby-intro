# Mi solucion:
def pad(array, min, phrase = nil)
  result = array.clone
  length = result.length
  if min <= length
    result
  else    
    new_array = Array.new(min-length,phrase)
    result + new_array
  end
end

def pad!(array, min, phrase = nil)
  length = array.length
  if min <= length
    array
  else
    (length...min).each do |e|
      array.insert(e,phrase)
    end
    array
  end
end

pad!([1,2,3], 5)
pad!([1,2,3], 5, 'apple')