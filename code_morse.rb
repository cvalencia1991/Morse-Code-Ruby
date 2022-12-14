


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
    print "#{key}".upcase
    end
  end
end

print("type the code morse \n")
code_morse = gets.chomp.to_s


decoder_char(code_morse)
