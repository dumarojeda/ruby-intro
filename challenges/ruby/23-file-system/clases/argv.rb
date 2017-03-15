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

# if ARGV.index("--user") && ARGV.index("--greeting")
#     name_index = ARGV.index("--user") + 1
#     name_value = ARGV[name_index]
#     greeting_index = ARGV.index("--greeting") + 1
#     greeting_value = ARGV[greeting_index]
#     p "Hola #{name_value} #{greeting_value}"
# else
#     p 'Algo salio mal'
# end
