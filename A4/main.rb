# Seth Kinsaul (903757001)
# smk0036@auburn.edu
load "Parser.rb"
load "Lexer.rb"
load "Token.rb"
load "AST.rb"

parse = Parser.new("input2.tiny")
mytree = parse.program()
puts mytree.toStringList()
