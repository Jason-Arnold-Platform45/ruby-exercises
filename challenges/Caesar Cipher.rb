def caesar_cipher(text,shift_number)
  alphabet = ("a".."z").to_a.join
  shifted_alphabet = alphabet.chars.rotate(shift_number).join
  text.tr(alphabet,shifted_alphabet)
end

puts caesar_cipher("What a string!", 5)