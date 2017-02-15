# Count Between

# Tu solucion abajo:
def count_between(array, numinf, numsup)
  if array.empty?
    return 0
  else
    array.count{|x| x >= numinf && x <= numsup }
  end
end


# def count_between(arr, upper, lower)
#   arr.count {|x| (x >= lower) && (x<= upper)}
# end

# def count_between(arr, lower, upper)
#   count = 0
#   arr.each do |x|
#     if (x >= lower) && (x<= upper)
#       count = count + 1
#     end
#   end
#   count
# end

