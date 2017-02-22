greeting_all = ARGV

user = greeting_all[greeting_all.index("--user") + 1]
greeting = greeting_all[greeting_all.index("--greeting") + 1]
p "Hola #{user}, #{greeting}"