def substrings(text,list_words)
  counter = Hash.new(0)
  words = text.downcase.split(/[^a-z']+/)
  list_words.each do |word|
    word_low = word.downcase
    words.each do |character|
      if character.include?(word_low)
        counter[word_low] += 1
      end
    end
  end
  counter
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)