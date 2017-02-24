# Pseudocode

# rwanda
# apple

# 1. Solucion Inicial
def pig_latin(word)
  word.chr 
  vowels = ["a","e","i","o","u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","w","x","y","z"]
  
  if vowels.include?(word.chr)
    word << "ay"
  elsif
    new_word = word.match(/([^aeiou]+)(\w*)/)

    piglatin_word = new_word[2] + new_word[1]

    piglatin_word.downcase << "ay"
  end


end






# 2. Solucion con Refactor
  # ["a","e","i","o","u"].include?(word.chr) ? word : word.reverse << "ay"





###### DRIVER CODE #########
p pig_latin("Rwanda")
