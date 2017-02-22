require 'pathname'

file = Pathname.new(__FILE__)
filename = File.basename file

p "Hola mundo desde #{filename}"