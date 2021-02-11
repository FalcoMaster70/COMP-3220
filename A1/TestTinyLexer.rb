n#Seth Kinsaul (903757001)
#smk0036@auburn.edu
load "./TinyToken.rb"
load "./TinyScanner.rb"
# if the file(s) are in the same directory, you can simply precede
# the file name(s) with ./
# filename.txt below is simply the "source code"
# that you write that adheres to your grammar rules
# if it is in the same directory as this file, you can
# simply include the file name, otherwise, you will need
# to specify the entire path to the file as we did above
# to load the other ruby modules

#scan the input.txt/input.tiny file
scan = Scanner.new("input.tiny")
tok = scan.nextToken()
#output = File.open("Input.tiny", "w")
output = File.open("tokentest.txt", "w")
scan = Scanner.new("input.tiny")
tok = scan.nextToken()

# the code below will open a file so that I
# can save tokens to it

# keep "fetching" one token at a time, using your scanner
# until there are no tokens left to scan
while (tok.get_type() != Token::EOF)

  # first token scenned
  puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
  # assign token to file.
  output.puts "#{tok.get_type()} #{tok.get_text()}"
  # get the next token available (if there is one)
  tok = scan.nextToken()
end

# There should be one token left (see the boolean condition above)
# putting the last token in the file and closing the file
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

# Tests for various tokens we have initialized that print to console and token file
puts "\nVarious tests for tokens"
output.puts "\nVarious tests for tokens"
tok = Token.new(Token::LPAREN, "(")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::RPAREN, ")")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::ADDOP, "+")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::SUBOP, "-")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::MULTIOP, "*")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::DIVISOP, "/")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::WS, "/n")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::PRINT, "print")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::INT, "123")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

tok = Token.new(Token::ID, "abc")
puts "Next Token is: #{tok.get_type()} Lexeme: #{tok.get_text()}"
output.puts "#{tok.get_type()} #{tok.get_text()}"

output.close()
