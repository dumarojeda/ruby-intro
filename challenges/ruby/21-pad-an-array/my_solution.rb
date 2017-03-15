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

# def pad(array, min, fill = nil)
#   new_array = []
#   new_array << array
#   if min <= new_array.size
#     p new_array
#   else
#     new_pos = new_array.size
#     (0..min).each do |i|
#       if i >= new_pos
#         new_array[new_pos] = fill
#       end
#     end
#     p new_array
#   end
# end

# def pad!(array, min, fill = nil)
#   if min <= array.size
#     p array
#   else
#     array.each.with_index do |item, i|
#       new_pos = array.size
#       if new_pos < min
#         array[new_pos] = fill
#       end
#     end
#     p array
#   end
# end

# pad([1,2,3], 3)

# pad([1,2,3], 5, 'apple')
