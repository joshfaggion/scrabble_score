class Word
  def initialize(word)
    @word = word
  end
  def scrabble
    letter_values = {1 => ['a','e','i','o','u','l','n','r','s','t'], 2 => ['d','g'], 3 => ['b','c','m','p'], 4 => ['h','f','v','w','y'], 5 => ['k'], 8 => ['j', 'x'], 10 => ['q', 'z']}
    letters = @word.split('')
    array = []
    sum = 0
    letters.each do |letter|
      letter_values.each do |key, values|
        values.each do |value|
          if (value == letter)
            array.push(key)
          end
        end
      end
    end
    array.each do |a|
      sum = sum + a
    end
    return sum
  end

end
