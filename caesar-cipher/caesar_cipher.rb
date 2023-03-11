def caesar_cipher(phrase, shift_count)
  shifted_phrase = ''
  phrase.each_char do |char|
    shifted_phrase << check_char(char, shift_count)
  end
  puts shifted_phrase
end

def check_char(char, shift_count)
  ascii_code = char.ord

  if ascii_code >= 97 && ascii_code <= 122 # lowercase
    ascii_code = shift_char(97, 122, ascii_code, shift_count)
  elsif ascii_code >= 65 && ascii_code <= 90 # uppercase
    ascii_code = shift_char(65, 90, ascii_code, shift_count)
  end
  puts "#{char} #{char.ord} Shifted:#{ascii_code.chr} #{ascii_code}"
  ascii_code.chr
end

def shift_char(lower, upper, ascii_code, shift_count)
  ascii_code += shift_count
  ascii_code = upper - (lower - ascii_code - 1) if ascii_code < lower
  ascii_code = lower + (ascii_code - upper - 1) if ascii_code > upper
  ascii_code
end

caesar_cipher('What a string!', 5)
caesar_cipher('Bmfy f xywnsl!', -5)
