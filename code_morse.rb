



def decoder_char(code_morse)
  letteMorse = {
    'A'=>'.-',
    'B'=>'-...',
    'C'=>'-.-.',
    'E'=>'.',
    'F'=>'..-.',
    'G'=>'--.',
    'H'=>'....',
    'I'=>'..',
    'J'=>'.---',
    'K'=>'-.-',
    'L'=>'.-..',
    'M'=>'--',
    'N'=>'-.',
    'O'=>'---',
    'P'=>'.--.',
    'Q'=>'--.-',
    'R'=>'.-.',
    'S'=>'...',
    'T'=>'-',
    'U'=>'..-',
    'V'=>'...-',
    'W'=>'.--',
    'X'=>'-..-',
    'Y'=>'-.--',
    'Z'=>'--..',
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
    print "#{key}"
    end
  end
end

print("type the code morse \n")
code_morse = gets.chomp.to_s


decoder_char(code_morse)
