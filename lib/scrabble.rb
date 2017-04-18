class String
  define_method(:scrabble) do
    score = 0
    letters = self.downcase.split('')
    letters.each() do |letter|
      if letter == "q" || letter == "z"
        score += 10
      elsif letter == "j" || letter == "x"
        score += 8
      elsif letter == "k"
        score += 5
      elsif letter == "f" || letter == "h" || letter == "v" || letter == "w"|| letter == "y"
        score += 4
      elsif letter == "b" || letter == "c" || letter == "m"|| letter == "p"
        score +=3
      elsif letter =="d"||letter=="g"
        score+=2
      elsif letter == "a"||letter=="e"||letter=="i"||letter=="o"||letter=="u"||letter=="l"||letter=="n"||letter=="r"||letter=="s"||letter=="t"
        score+=1
      end
    end
    score
  end
end
