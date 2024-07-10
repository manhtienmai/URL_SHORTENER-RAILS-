class ShortCode
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length
  def self.encode(value)
    result = ""
    while number > 0 do
      index = number % 62
      char = ALPHABET[index]
      result.prepend char
      number /= 62
    end
  end

  def self.decode(value)

  end
end