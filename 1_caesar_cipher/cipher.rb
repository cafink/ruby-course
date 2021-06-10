LOWERCASE_ALPHABET = [*97..122]
UPPERCASE_ALPHABET = [*65..90]
UPPERCASE_OFFSET   = UPPERCASE_ALPHABET.first
LOWERCASE_OFFSET   = LOWERCASE_ALPHABET.first
ALPHABET = LOWERCASE_ALPHABET + UPPERCASE_ALPHABET

def caesar_cipher(plaintext, shift_amount)
  ciphertext = plaintext.each_char.map do |char|
    ALPHABET.include?(char.ord) ? shift_character(char.ord, shift_amount) : char
  end
  ciphertext.join
end

def shift_character(ascii_value, shift_amount)
  # change value to be zero-based to accommodate mod arithmetic for "wrapping"
  offset = LOWERCASE_ALPHABET.include?(ascii_value) ? LOWERCASE_OFFSET : UPPERCASE_OFFSET
  ascii_value -= offset

  new_value = (ascii_value + shift_amount) % 26 # magic number, assumes size of alphabet

  # add offset back to restore original range
  (new_value + offset).chr
end