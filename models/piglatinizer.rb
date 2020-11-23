require 'pry'

class PigLatinizer
  attr_reader :words

  def initialize(words)
    @words = words.split(" ")
  end

  def piglatinize
    x = "Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo"
    x.split(" ").each do |word|
      puts word
      binding.pry
  end
end

=begin  def split_sentence
     split_it = @words.split(" ")
     x = []
     split_it.each do |word|


     if word.start_with?("a", "e", "i", "o", "u")
        sw = word.split("").shift()
        x << word.delete_prefix(sw)+sw+"ay"
      else
        sw = word.split("").shift()
        x << word.delete_prefix(sw)+sw+"way"
      end
      binding.pry
    end
    return x.join(" ")






=end

end
