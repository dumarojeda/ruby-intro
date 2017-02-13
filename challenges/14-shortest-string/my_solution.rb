# Shortest String

#Tu solucion abajo:
def shortest_string(strings)
  strings.min do |a,b| 
    a.size <=> b.size
  end
end