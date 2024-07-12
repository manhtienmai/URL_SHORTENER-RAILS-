class ShortCode
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length
  def self.encode(number)
    result = ""
    while number > 0 do
      index = number % 62
      char = ALPHABET[index]
      result.prepend char
      number /= 62
    end

    result
  end

  def self.decode(string)
    number = 0

    string.reverse.each_char.with_index do |char, index|
      power = BASE ** index
      index = ALPHABET.index(char)
      number += index * power
    end

    number
  end
end