def caesar_cipher(message, shift_factor)
  shifted_array = message.chars.map { |c|
    (c.ord + shift_factor).chr
  }
  shifted = ""
  shifted_array.each { |c|
    shifted += c
  }
  return shifted
end

# TODO wrap from z to a
puts(caesar_cipher("aBcz", 5))
