def decoder(string)
  morse_alphabet = {
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
  morse_alphabet[morse_char]
end

def self.decode_word(morse_word)
  morse_char = morse_word.split(' ')
  morse_char.map { |char| decode_char(char) }.join('')
end

def self.decode_message(string)
    morse_string = string.split(' ')
    morse_string.map { |word| decode_word(word) }.join(' ')
end
