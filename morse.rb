def translator(character)
  alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  alphabet[character]
end

def split_word(word)
  word.split.map { |letter| translator(letter) }.join
end

def split_sentence(sentence)
  sentence.split('   ').map { |word| split_word(word) }.join(' ')
end

morse = '-- -.--   -. .- -- .'
phrase = split_sentence(morse)
puts phrase
