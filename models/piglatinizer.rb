require 'pry'

class PigLatinizer
  attr_reader :words

  def initialize(words)
    @words = words.split(" ")
  end

  def piglatinize
    x = []
    words.each do |word|
      if word.start_with?("a", "e", "i", "o", "u")
        x = word.split("").shift()
        x << word.delete_prefix(x)+x+"ay"
      else
        x = word.split("").shift()
        x << word.delete_prefix(x)+x+"way"
      end
    end
    binding.pry
    return x.join(" ")
  end

=begin  def split_sentence
     split_it = @words.split(" ")
     x = []
     split_it.each do |word|
=end

end
