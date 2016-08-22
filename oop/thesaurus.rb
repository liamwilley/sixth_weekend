# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!
require 'RSpec'

class Thesaurus < Entry
 
  words = []
  user_input = gets.chomp
  words << user_input
  words.each do |word|


  def delete
  words
  delete_word = gets.chomp
  
    words.each do |word|
      if word == delete_word
        word.delete
      end

  end

 

end

class Entry

attr_accessor :word, :synonyms, :antonyms
 
  def add
   added_words = []
   puts "please add a word(s)"
   added_words << gets.chomp
  end

end







