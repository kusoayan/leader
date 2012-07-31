module StocksHelper
  def number_to_alphabet(number)
    return AlphabetNumber.find(number).alphabet
  end
end
