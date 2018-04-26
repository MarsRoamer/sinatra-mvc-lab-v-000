class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
    # self.piglatinizer(@phrase)
  end

  def piglatinize(phrase = nil)
  arr = @phrase.split(" ")
  new_arr = []
  arr.each do |word|
    count = 0
    word.split("").each do |letter|
      if word[0].downcase.start_with?('a', 'e', 'i', 'o', 'u')
        new_word = word + "way"
        new_arr << new_word
        break;
      elsif letter.start_with?('a', 'e', 'i', 'o', 'u')
        test = word.slice!(0..count-1)
        new_word = word + test + "ay"
        new_arr << new_word
        break;
      else
        count += 1
      end
    end
  end
  new_arr.join(" ")
end

def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end







end
