def caesar_cipher(message, shift_factor)
  shifted_array = message.chars.map { |c|
    if (c.ord + shift_factor > "z".ord)
      ("a".ord + shift_factor - 1).chr
    else
      (c.ord + shift_factor).chr
    end
  }
  shifted = ""
  shifted_array.each { |c|
    shifted += c
  }
  return shifted
end

puts(caesar_cipher("aBcz", 1))
puts(caesar_cipher("aBcz", 2))
puts(caesar_cipher("aBcz", 5))
#puts(caesar_cipher("aBcz", -1)) # TODO wrap backward
puts(caesar_cipher("Jessica", 20)) # TODO nowork
