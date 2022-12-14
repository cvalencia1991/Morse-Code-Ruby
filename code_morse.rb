


def decoder_char(code_morse)
  letteMorse = {
    'a'=>'.-',
    'b'=>'-...',
    'c'=>'-.-.',
    'e'=>'.',
    'f'=>'..-.',
    'g'=>'--.',
    'h'=>'....',
    'i'=>'..',
    'j'=>'.---',
    'k'=>'-.-',
    'l'=>'.-..',
    'm'=>'--',
    'n'=>'-.',
    'o'=>'---',
    'p'=>'.--.',
    'q'=>'--.-',
    'r'=>'.-.',
    's'=>'...',
    't'=>'-',
    'u'=>'..-',
    'v'=>'...-',
    'w'=>'.--',
    'x'=>'-..-',
    'y'=>'-.--',
    'z'=>'--..',
    '1'=>'.---',
    '2'=>'..---',
    '3'=>'...--',
    '4'=>'....-',
    '5'=>'.....',
    '6'=>'-....',
    '7'=>'--...',
    '8'=>'---..',
    '9'=>'----.',
    '0'=>'-----'
  }

  letteMorse.each do |key, value|
   if(value==code_morse)
    return "#{key}".upcase
    end
  end
end

#testing decoder_char
# decoder_char('-.-.') #C
# decoder_char('.')    #E
# decoder_char('...')  #S
# decoder_char('.-')   #A
# decoder_char('.-.')  #R

#Add method decode Word

def docode_word(word_code)
  array = word_code.split(' ')
  text = " "
  array.each do |letter|
    text += decoder_char(letter)
  end
  print text
end


docode_word("-- -.--")

#Finish Function Decode Word
