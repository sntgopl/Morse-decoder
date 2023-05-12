class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A', 
    '-...' => 'B',
    '-.-.' => 'C', 
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
     '....' => 'H',
    '..' => 'I',
     '.---' => 'J',
    '-.-' => 'K',
     '.-..' => 'L',
    '--' => 'M',
     '-.' => 'N',
    '---' => 'O', 
    '.--.' => 'P',
    '--.-' => 'Q', 
    '.-.' => 'R',
    '...' => 'S', 
    '-' => 'T',
    '..-' => 'U', 
    '...-' => 'V',
    '.--' => 'W', 
    '-..-' => 'X',
    '-.--' => 'Y', 
    '--..' => 'Z'
} 

def self.decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def self.decode_word(morse_word)
  morse_char = morse_word.split('')
  morse_char.map {|morse_char| decode_char(morse_char)}.join('')
end

def self.message(message)
    morse_words = message.split(' ')
    morse_words.map {|morse_word| decode_word(morse_word)}.join(' ')
end
end

message = MorseCodeDecoder.message('.... . .-.. .-.. ---  .-- --- .-. .-.. -..')
puts message
