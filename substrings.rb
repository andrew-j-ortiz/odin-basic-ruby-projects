# Substrings identifier by Andrew Ortiz for the Odin Project

DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str_words, arr_dictionary)
  arr_dictionary.each_with_object({}) do |dictionary_word, result|
    int_word_instances = str_words.downcase.scan(dictionary_word).length
    result[dictionary_word] = int_word_instances if int_word_instances > 0 
  end
end

puts substrings("Howdy partner, sit down! How's it going?", DICTIONARY)