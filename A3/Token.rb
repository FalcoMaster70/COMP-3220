#Seth Kinsaul (903757001)
#smk0036@auburn.edu
#  Class Token - Encapsulates the tokens in TINY
#
#   @type - the type of token
#   @text - the text the token represents
#
class Token
   attr_accessor :type
   attr_accessor :text

   EOF = "eof"
   LPAREN = "("
   RPAREN = ")"
   ADDOP  = "+"
   SUBOP  = "-"
   MULTOP = "*"
   DIVOP  = "/"
   INT    = "int"
   ID     = "id"
   PRINT  = "print"
   ASSGN   = "="
   WS     = "whitespace"
   UNKNWN = "unknown"

   def initialize(type,text)
      @type = type
      @text = text
   end
   #get type
   def get_type
      return @type
   end
   #get text
   def get_text
      return @text
   end
   def to_s
     # return "[Type: #{@type} || Text: #{@text}]"
       return "#{@type} #{@text}"
   end
end
