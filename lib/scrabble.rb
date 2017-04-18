# class String
#   define_method(:scrabble) do
#     score = 0
#     letters = self.downcase.split('')
#     letters.each() do |letter|
#       if letter == "q" || letter == "z"
#         score += 10
#       elsif letter == "j" || letter == "x"
#         score += 8
#       elsif letter == "k"
#         score += 5
#       elsif letter == "f" || letter == "h" || letter == "v" || letter == "w"|| letter == "y"
#         score += 4
#       elsif letter == "b" || letter == "c" || letter == "m"|| letter == "p"
#         score +=3
#       elsif letter =="d"||letter=="g"
#         score+=2
#       elsif letter == "a"||letter=="e"||letter=="i"||letter=="o"||letter=="u"||letter=="l"||letter=="n"||letter=="r"||letter=="s"||letter=="t"
#         score+=1
#       end
#     end
#     score
#   end
# end

class String
  define_method(:scrabble) do
    letters = { "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1,
    "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4, "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10}
    split_letters= self.downcase.split('')
    score = 0
    split_letters.each() do |letter|
      score = score + letters.fetch(letter)
    end
    score
  end
end
