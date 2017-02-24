# Pseudocode



# Escribe un metodo que reciba un filename y n como parametros. Este metodo debe imprimir las n palabras mas comunes en el archivo y el numero de ocurrencias de cada una en orden decendente.

# El archivo para que pruebes este metodo esta incluido en esta carpeta. Se llama source.txt.

# Ejemplo de como debe funcionar:

# most_common_words('some_file.txt', 3) # imprime:
# > 'apples': 18 occurrences
# > 'oranges': 13 occurrences
# > 'melons': 9 occurrences

# Paso 1 : Agregale un filtro

# Te daras cuenta que los resultados suelen incluir palabras como a, the, and, etc.

# Reescribe tu programa para que filtre todo el ruido, de modo que los resultados si pinten una idea clara de los datos del archivo, de modo que solo cuente palabras no-triviales como verbos y sustantivos.

# 1. Solucion Inicial
def most_common_words(filename,number) 

  file = File.read(filename)
  words = file.split
  frequencies = Hash.new(0)
  words.each {|word| frequencies[word] += 1 }
  
  most_common = frequencies.max_by(number) {|k,v| v}

  most_common.each do |k|
    puts "'#{k[0]}': #{k[1]} occurrences"
  end
end



# 2. Solucion con Refactor





###### DRIVER CODE #########
most_common_words('source.txt', 3)

