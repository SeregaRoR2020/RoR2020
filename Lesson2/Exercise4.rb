alphabet = ('a'..'z').to_a
vowels = %w[a e i o u y]

vowels_alphabet = {}
vowels.each { |letter|
  vowels_alphabet[letter] = alphabet.index(letter) + 1
}

puts vowels_alphabet