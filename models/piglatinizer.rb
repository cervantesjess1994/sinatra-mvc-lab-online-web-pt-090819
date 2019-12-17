class PigLatinizer
  attr_accessor :string

  def to_pig_latin(string)
    string = string.split(" ")
    string_array = string.collect do |word|
      if word.length == 1
        word.join("way")
      end
    end
  end
end





