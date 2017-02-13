# Longest String

# Tu solucion abajo:
def longest_string(strings)
  strings.max do |a,b| 
    a.size <=> b.size
  end
end
