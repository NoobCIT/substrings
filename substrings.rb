
def substrings(word, dictionary)
  hash = {}
  dictionary = dictionary.split(" ")
  a = 0
  word = word.split(" ")
  # loop for checking 1 word at a time
  while a <= word.length
    i = 0
    #loop for checking 1 dictionary word at a time
    while i <= dictionary.length
      if !!(word[a] =~ /#{dictionary[i]}/i)
        hash[dictionary[i]] ||= 0
        hash[dictionary[i]] += 1
      end
      i += 1
    end
    a += 1
  end
  hash.delete(nil)
  puts hash
end
substrings("Howdy partner, sit down! How's it going?", "below down go going horn how howdy it i low own part partner sit")
