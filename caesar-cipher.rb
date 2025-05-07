# Caesar cipher by Andrew Ortiz for the Odin Project

def main
  puts "====================="
  puts "    CAESAR CIPHER    "
  puts "====================="
  puts

  puts "Please enter your message:"
  str_user_message = gets.chomp
  puts
  puts "Please enter your shift amount:"
  int_user_shift = gets.chomp.to_i
  puts

  str_encrypted_message = caesar_cipher(str_user_message, int_user_shift)

  puts "Your encrypted message is:"
  puts str_encrypted_message
end

def caesar_cipher(str_words, int_shift)
  arr_alphabet_lowcase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"] 
  arr_alphabet_upcase = arr_alphabet_lowcase.map {|letter| letter.upcase}
  int_alphabet_length = arr_alphabet_lowcase.length

  # Split string into individual letters
  arr_words_split = str_words.chars

  # Loop through each letter in arr_words_split
  # Find out its alphabet position
  # Find out its shifted letter
  # Store shifted letters in an array
  arr_shifted_letters = arr_words_split.map do |letter|
    # Check if string is a letter
    if arr_alphabet_lowcase.include?(letter) or arr_alphabet_upcase.include?(letter)
      # Check if letter is uppercase or lowercase
      if letter == letter.upcase
        int_alphabet_position = arr_alphabet_upcase.index(letter)
        int_shift_amount = (int_alphabet_position + int_shift) % int_alphabet_length
        str_shifted_letter = arr_alphabet_upcase[int_shift_amount]
      else
        int_alphabet_position = arr_alphabet_lowcase.index(letter)
        int_shift_amount = (int_alphabet_position + int_shift) % int_alphabet_length
        str_shifted_letter = arr_alphabet_lowcase[int_shift_amount]
      end
    else
      letter
    end
  end
  arr_shifted_letters.join("")
end

main()