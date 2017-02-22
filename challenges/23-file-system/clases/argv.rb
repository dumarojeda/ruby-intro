greeting_all = ARGV

index_user = greeting_all.index("--user")
index_greeting = greeting_all.index("--greeting")

if !(index_user && index_greeting)
  p "Algo salio mal"
else
  user = greeting_all[index_user + 1]
  greeting = greeting_all[index_greeting + 1]

  p "Hola #{user}, #{greeting}"
end

