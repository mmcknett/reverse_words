# A method to reverse each word in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_words(my_words)
  return nil if my_words.nil?

  first = 0
  last = 0
  while last <= my_words.length
    if my_words[last] == " " || my_words[last].nil?
      # End of a word
      string_reverse(my_words, first, last)
      last += 1
      first = last
    else
      last += 1
    end
  end
end

def string_reverse(my_string, first, last)
  if my_string == nil || my_string == "" || last - first <= 1 then
    return my_string
  end

  # Until you reach the middle of the string, swap
  # a character from the front half with a character
  # from the back half.
  while first < last do
    my_string[first], my_string[last - 1] = my_string[last - 1], my_string[first]
    first += 1
    last -= 1
  end

  return my_string
end
