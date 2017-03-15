# Pseudocode



# 1. Solucion Inicial
def mode(array)
  group = Hash.new(0)
  array.each do |i|
    group[i]+=1
  end
  group
  max = group.values.max
  output_hash = group.select {|k,v| v == max}
  output_hash.keys

# def mode(array)
#  freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
#  array.max_by {|v| freq[v]}
# end


# 2. Solucion con Refactor





###### DRIVER CODE #########
# mode([4, 4, 5, 5, 6, 6, 6, 7, 5])         # => [3]
# mode([4.5, 0, 0])       # => [0]
# mode([1.5, -1, 1, 1.5]) # => [1.5]
# mode([1,1,2,2])         # => [1,2]
# mode([1,2,3])           # => [1,2,3], por que todos ocurren con la misma frecuencia
# mode(["who", "what", "where", "who"]) # => "who"
