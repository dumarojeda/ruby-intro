# Esta es la forma en que se crean errores personalizados
class NoOrangesError < StandardError
end

class OrangeTree

  attr_reader :height, :age

  def initialize
    @age = 0
    @height = 0
    @oranges = []
  end

  # Envejeze el arbol
  def age!
    #Agregar un año al arbol
    @age += 1

    #El arbol va creciendo hasta llegar a 2 metros
    if @height <= 200
      @height += rand(10..15)
    else
      @height
    end

    #Si el arbol ya es grande empieza a producir naranjas
    if @age > 3
      rand(500..600).times do |t|
        @oranges << Orange.new(rand(10..15))
      end
    end
  end

  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?
    @oranges.length > 0
  end

  # Devuelve una naranja si hay una
  # Dispara un NoOrangesError de lo contrario
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    # Logica para sacar naranjas va aca
    @oranges.pop 
  end

  def dead?
    @age >= 15
  end
end

class Orange

  attr_accessor :diameter

  # Crea una naranja con determinado +diameter+
  def initialize(diameter)
    @diameter = diameter
  end
end


######## DRIVER CODE ###########

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?
  basket = []

  # Pone las naranjas en la canasta
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  avg_diameter = basket.map { |orange| orange.diameter}
  avg_diameter = avg_diameter.reduce(:+) / basket.length
  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  # Envejeze el arbol en 1 año
  #
  tree.age!
end

puts "Miercoles, se murio el arbol!"

