class MorseCodeDecoder
  def self.decode_char(morse_char)
    morse_code = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
      '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
      '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
      '...-' => 'V', '.--' => 'W', '-..-' => 'X',
      '-.--' => 'Y', '--..' => 'Z'
    }
    morse_code[morse_char]
  end

  def self.decode_word(morse_word)
    morse_char = morse_word.split
    morse_char.map { |char| decode_char(char) }.join
  end

  def self.message(message)
    morse_words = message.split('  ')
    morse_words.map { |morse_word| decode_word(morse_word) }.join(' ')
  end
end

message = MorseCodeDecoder.message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts message
