class PigLatinizer

  def piglatinize(input)
    #take in a string
    #split it by spaces
    #iterate over the array
    #for each word, take first letter and append it to the end and add 'ay'
    #if it begins with a vowel, don't shift first letter and append 'way'
    #then join with spaces
    words = input.split(' ')
    words.map do |word|
      if word[0].index(/[aeiouAEIOU]/).nil?
        parts = word.split(/([aeiouAEIOU].*)/)
        "#{parts[1]}#{parts[0]}ay"
      else
        "#{word}way"
      end
    end.join(' ')
  end

  def to_pig_latin(input)
    piglatinize(input)
  end

end
