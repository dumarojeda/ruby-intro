# Pseudocode



# 1. Solucion Inicial
class Die
  attr_accessor :sides
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Numero menor de 1")
    else
      @sides = sides    
    end    
  end    
        
  def roll
    1 + rand(@sides)
  end    
end
die = Die.new(6)
p die.roll
p die.sides





# 2. Solucion con Refactor





###### DRIVER CODE #########
