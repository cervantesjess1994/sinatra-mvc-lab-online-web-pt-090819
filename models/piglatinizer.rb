class PigLatinizer
  attr_accessor :string

  def to_piglatinize_string(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
end

  def piglatinize(word)
    first_letter = word[0].downcase
    if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
        # piglatinize word that starts with a vowel
    else
        # piglatinize word that starts with a consonant
    end
end
