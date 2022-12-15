def decode_morse(morse_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?', '-.-.--' => '!',
    '-..-.' => '/', '-.--.' => '(', '-.--.-' => ')', '.-...' => '&', '---...' => ':',
    '-.-.-.' => ';', '-...-' => '=', '.-.-.' => '+', '-....-' => '-', '..--.-' => '_',
    '.-..-.' => '"', '...-..-' => '$', '.--.-.' => '@', ' ' => ' '
  }
  morse_code[morse_char]
end

# method to decode an entire word in Morse code
def decode_word(morse_word)
  word = ' '
  morse_word.split(word).map { |char| decode_morse(char) }.join
end

# method to decode the entire message in Morse code
def decode_message(morse_message)
  morse_message.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode_word('.... . .-.. .-.. ---') # HELLO
# CESAR AND KELVIN DID THIS PROJECT
puts decode_message('-.-. . ... .- .-.    .- -. -..    -.- . .-.. ...- .. -.    -.. .. -..    - .... .. ...
.--. .-. --- .--- . -.-. -')
# A BOX FULL OF RUBIES!
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ... -.-.--')
