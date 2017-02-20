
# Practica de Arrays

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "Tactical 10mm"]

# 1. Itera sobre el array zombie_apocalypse_supplies, imprimiendo cada elemento dentro del array.
# ----
puts "1 Zombie "+"-"*15
puts " "

zombie_apocalypse_supplies.each do | supply |
  puts supply
end

puts " "
puts "Teacher solution"
puts " "

puts zombie_apocalypse_supplies

zombie_apocalypse_supplies.each do |thing|
  p thing
end

# 2. Para mantenernos organizados, organiza el array zombie_apocalypse_supplies de forma alfabetica.
# ----
puts " "
puts "2 Zombie "+"-"*15
puts " "

puts result = zombie_apocalypse_supplies.sort_by { | supply |
  supply.downcase
}

result == ["binoculars", "CB radio", "compass", "hatchet", "rations","shotgun", "Tactical 10mm", "water jug"]

puts " "
puts "Teacher solution"
puts " "

zombie_apocalypse_supplies.sort_by { |word| word.downcase }

# 3. Crea un metodo que mire si un item (string) esta dentro del arreglo zombie_apocalypse_supplies. Por ejemplo esta `boots` dentro de la lista de suministros?.
# ----
puts " "
puts "3 Zombie "+"-"*15
puts " "

def finding_supplies(supply, supplies)
  if supplies.include?(supply)
    puts "Si hay #{supply} dentro de la lista"
  else
    puts "No hay #{supply} dentro de la lista"
  end
end

finding_supplies("compass", zombie_apocalypse_supplies)
finding_supplies("pizza", zombie_apocalypse_supplies)

puts " "
puts "Teacher solution"
puts " "

def is_there_thing?(thing, a)
  a.include?(thing)
end

is_there_thing?('compass', zombie_apocalypse_supplies)

# 4. No puedes cargar muchas cosas, solo hay espacio para 5. Remueve todos los items del arreglo zombie_apocalypse_supplies que tengas mas de dos palabras, solo pueden quedar los 5 items compuestos de una sola palabra.
# ----
puts " "
puts "4 Zombie "+"-"*15
puts " "

# zombie_apocalypse_supplies.map do | supply |
#   # if supply.split.size == 2
#   #   zombie_apocalypse_supplies.delete supply
#   # end
#   puts supply
# end

puts zombie_apocalypse_supplies.delete_if {| supply | 
  supply.split.size > 1 
}

puts " "
puts "Teacher solution"
puts " "

result = zombie_apocalypse_supplies.select {|thing| !thing.include?(' ')}

# 5. Encontraste otro sobreviviente! esto significa que pueden combinar sus suministros. Crea un nuevo arreglo de suministros combinados en base a tus zombie_apocalypse_supplies, y los sumnitros del otro sobreviviente. Debes deshacerte de todos los suministros que esten duplicados. No olvides revisar la documentacion de Array.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
puts " "
puts "5 Zombie "+"-"*15
puts " "

zombie_apocalypse_supplies.each do | supply |
  if other_survivor_supplies.include?(supply)
    other_survivor_supplies.delete supply
  end
  # other_survivor_supplies.delete_if {| supply | 
  #   other_survivor_supplies.include?(supply)
  # }
end

combine_supplies = []
puts combine_supplies = zombie_apocalypse_supplies + other_survivor_supplies

puts " "
puts "Teacher solution"
puts " "

result = zombie_apocalypse_supplies + other_survivor_supplies
result = result.uniq

result = zombie_apocalypse_supplies | other_survivor_supplies

# Practica de Hash

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Itera sobre el hash extinct_animals, imprimiendo cada vez el la pareja de key/value con un dash (-) entre ellos y un asterisco (*) entre cada elemento (animal extincto).
# ----
puts " "
puts "1 Animal "+"-"*15
puts " "

extinct_animals.each do | animal, year |
  puts "#{animal} - #{year}"
  puts "*"
end

puts " "
puts "Teacher solution"
puts " "

extinct_animals.each do |animal, year|
  puts "#{animal}-#{year}"
  puts '*'
end


# 2. Elimina todos los animales que se extinguieron despues del año 1999, del hash extinct_animals. No uses metodos especiales solo `delete` e iteraciones.
# ----
puts " "
puts "2 Animal "+"-"*15
puts " "

extinct_animals.each do | animal, year |
  if year > 1999
    extinct_animals.delete(animal)
  end
end

extinct_animals.each do | animal, year |
  puts "#{animal} - #{year}"
  puts "*"
end

puts " "
puts "Teacher solution"
puts " "

extinct_animals.each do |animal, year|
  extinct_animals.delete(animal) if year > 1999
end

# 3. Nuestros calculos estaban muy mal, resulta que todos esos animales se extinguieron 3 años antes que la fecha dada. Actualiza los valores dentro de extinct_animals para que reflejen el valor real de la fecha de extincion.
# ----
puts " "
puts "3 Animal "+"-"*15
puts " "

extinct_animals.each do | animal, year |
  extinct_animals[animal] = year + 3
end

extinct_animals.each do | animal, year |
  puts "#{animal} - #{year}"
  puts "*"
end

puts " "
puts "Teacher solution"
puts " "

extinct_animals.each do |animal, year|
  extinct_animals[animal] = year - 3
end

# 4. Oiste que los siguientes animales podian estar extinctos, pero no estas seguro. Uno por uno revisa si se encuentran incluidos dentro del hash extinct_animals:
# "Andean Cat"
# "Dodo"
# "Tasmanian Tiger"
# "Saiga Antelope"
# ----
puts " "
puts "4 Animal "+"-"*15
puts " "

others_animals = ["Andean Cat", "Dodo", "Tasmanian Tiger", "Saiga Antelope"]

others_animals.each do | animal |
  if extinct_animals.include?(animal)
    puts "#{animal} esta dentro de la lista"
  else
    puts "#{animal} No esta dentro de la lista"
  end
end

# 5. Acabamos de encontrar que el Passenger Pigeon, realmente no esta extincto!
# Remuevelo del hash extinct_animals y devuelve su pareja de key/value como un arreglo de dos elementos. Puedes encontrar un metodo en la documentacion de la  clase Hash que te puede ayudar con esto.
# ----
puts " "
puts "5 Animal "+"-"*15
puts " "

passenger_pigeon = extinct_animals.select {| animal | animal == "Passenger Pigeon"}

passenger_pigeon.each do | animal, year |
  puts "#{animal} - #{year}"
end

puts " "

extinct_animals.delete_if {| animal | animal == "Passenger Pigeon"}

extinct_animals.each do | animal, year |
  puts "#{animal} - #{year}"
  puts "*"
end

puts " "
puts "Teacher solution"
puts " "

extinct_animals.to_a.unshift(["Passenger Pigeon", 1914]).to_h.shift

# Practica, Estructuras nesteadas

# Imprime en la consola solo el elemento target ningun otro

# Target: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# Intentos:
# ============================================================
puts " "
puts "1 Nested Structures "+"-"*15
puts " "

# array = [
#   [1,2], 
#   ["inner", 
#     ["eagle", "par", 
#       ["FORE", "hook"]
#     ]
#   ]
# ]

puts "Solution 1"
puts " "

p array[1][1][2][0]

puts " "
puts "Solution 2"
puts " "

p array.last.last.last[0]

puts " "
puts "Solution 3"
puts " "

new_array = array.flatten

new_array.each do |item|
  if item == "FORE"
    p item
  end
end

puts " "
puts "Teacher solution"
puts " "

array.flatten.each do |thing|
  if thing == "FORE"
    p thing
  end
end

# ============================================================

# Target: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# Intentos:
# ============================================================
puts " "
puts "2 Nested Structures "+"-"*15
puts " "

# hash = {
#   outer: {
#     inner: {
#       "almost" => {
#         3 => "congrats!"
#       }
#     }
#   }
# }

# hash.values[0].values[0].values[0].values

hash.each do |key, value|
  value.values.each do |key, value|
    key.values.each do |key, value|
      puts key.values
    end
  end
end


# ============================================================

# Target: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# Intentos:
# ============================================================
puts " "
puts "3 Nested Structures "+"-"*15
puts " "

# nested_data = {
#   array: [
#     "array", 
#     { hash: "finished" }
#   ]
# }

puts " "
puts "Solution 1"
puts " "

puts nested_data.values[0][1].values

puts " "
puts "Solution 2"
puts " "

nested_data.each do |key, value|
  value[1].each do |key|
    p key[1]
  end
end

# ============================================================

#Usando un metodo del modulo Enumerable, modifica el array number_array de forma que cada numero se le sume 5. Lo vas a hacer de forma destructiva o no ?

number_array = [5, [10, 15], [20,25,30], 35]

puts " "
puts "Add number "+"-"*15
puts " "

number_array.map.with_index do |number, index|
  if number.is_a?(Array)
    number.map.with_index do |sub_number, sub_index|
      number_array[index][sub_index] += 5
    end
  else
    number_array[index] += 5
  end
end

p number_array


# Crea un metodo que reciva un array como argumento, en este caso el array startup_names, y devuelva un array igual pero en donde a cada nombre se le a añadido 'ly' al final.

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map.with_index do |string, index|
  if string.is_a?(Array)
    string.map.with_index do |sub_string, sub_index|
      
      if sub_string.is_a?(Array)
        sub_string.map.with_index do |sub_sub_string, sub_sub_index|
          startup_names[index][sub_index][sub_sub_index] += "ly"
        end
      else
        startup_names[index][sub_index] += "ly"
      end

    end
  else
    startup_names[index] += "ly"
  end
end

p startup_names