module FunWithStrings
  def palindrome?
    new_str = self.downcase.gsub(/[^a-z]/,"")
    return new_str == new_str.reverse
  end
  def count_words
    text = self.downcase.gsub(/[^a-zA-Z\s]/,"")
    words = text.split(" ")
    frequencies = Hash.new(0)
    words.each { |word| frequencies[word] += 1 }
    return frequencies
  end
  def anagram_groups
    self.split(" ").group_by { |a| a.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
