require "json"
require "syntax_tree"

file = File.open('primes.rb')
content = file.read
file.close

program = SyntaxTree.parse(content)
puts JSON.dump(program)