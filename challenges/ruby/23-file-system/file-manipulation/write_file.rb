text = ARGV[ARGV.index('--phrase') + 1]

File.open('soy_nuevo.md', 'w+') {|file| file.puts(text)}
