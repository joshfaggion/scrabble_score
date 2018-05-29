require('rspec')
require('pry')
require('scrabble_score')

describe('#scrabble_score?') do
  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabble()).to(eq(1))
  end

  it ('returns a scrabble score for a word') do
    word = Word.new("hello")
    expect(word.scrabble()).to(eq(8))
  end

  it ('returns a high scrabble score for a small word') do
    word = Word.new("zet")
    expect(word.scrabble()).to(eq(12))
  end

end
