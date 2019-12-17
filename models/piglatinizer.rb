class PigLatinizer

  def vowel?(letter)
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end

  def piglatinize(word)
    return word if %w[and an in].include?(word)
    letters = word.split("")
    letters.keep_if {|letter| letter != "."}
    if letters.size > 1
      until vowel?(letters[0])
        letters << letters.shift
      end
      letters  << "ay"
    end
    letters.join
  end

  def to_pig_latin(sentence)
    word = sentence.split
    word.each do {|word| word.piglatinize}
    end
  end
end
