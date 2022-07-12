require 'pry'

def reverse_each_word(sentence)

=begin
  words = sentence.split
  reversed_words = []

  words.each do |word|
    reversed_words << word.reverse
  end
  
  reversed_words.join(" ")
=end

# Refactor:

=begin
  words = sentence.split

  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
=end

# I said refactor!

=begin
  words = sentence.split

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")
=end

# I SAID REFACTOR!

  sentence.split.map(&:reverse).join(' ')

# ...perfection.
end

puts reverse_each_word('Hello there, and how are you?')