code = "impor math ;  int x = 10 ; if ( y >=  5 ) { nu# = xyz * 3 + 3.5 }  "

=begin
code.each_byte do | step |
    justchar = step.chr
    puts justchar
    #puts " ---"
end
=end
listofword = code.gsub(/\s+/m, ' ').strip.split(" ")

#p (listofword)

def check_keyword (listofword)
    #listkeyword = []
listidentfier = []
listarithmeticSymbols = []
listspecialchar = []
listofassigmnet = []
listinteger = []
listfloatintger = []
listreject = []
kwordlist= []
listofword.each do |word|
    #puts word
         if(word.match(/i(n(t)|f|m(p(o(r(t)))))/))
            kwordlist << word
         
      
         #if ((word[0]== "i" && word[1] == "n" && word [2] == "t")||
             #(word [0] == "i"  && word [1] == "f") ||
             #(word [0] == "i" && word [1] == "m" && word [2] == "p" && word[3] == "o" && word[4] == "r" && word[5] == "t"
            #))
            #listkeyword << word
        
        elsif ( word == "+" || word == "-" || word == "*" || word == "/" || word == "%")
            listarithmeticSymbols << word
        elsif ( word == ";" || word == "(" || word == ")" || word == "{" || word == "}" )
            listspecialchar << word
        elsif (word == "=" || word == "<=" || word == ">=" || word == "==" || word == "<" || word == ">" || word == "!=")     
            listofassigmnet << word
        
        elsif (word.match(/\A[+-]?\d+?\Z/))
           listinteger << word
        elsif (word.match(/\A[+-]?\d+?(\.\d+)?\Z/))
            listfloatintger << word
        elsif (word.match(/\A[+-]?\w+?\Z/) )
            listidentfier << word
        else
            listreject << word
        end
        
    end
    #puts "#{listkeyword} is list of keyword "
    puts "#{listarithmeticSymbols} is list of arithmeticSymbols "
    puts "#{listspecialchar} is list of special character"
    puts "#{listofassigmnet} is list of assigmnet"
    puts "#{listinteger} is list of number integer"
    puts "#{listfloatintger} is list of number float"
    puts "#{listidentfier} is list of identfier"
    puts "#{listreject} is list of reject "
    puts "------------------------------------------------"
    puts "#{kwordlist} is key word "
end
puts '_____________________________________________________________'
check_keyword(listofword)

