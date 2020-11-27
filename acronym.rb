# acronym.rb
# PEDAC practice #5

# Problem
# Examples/Test Cases
# Data Structure
# Algorithm
# Code

# coding with intent


# Problem & Examples
#####################
# Convert a phrase to its acronym.

# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).


# Data Structure
##################
# Input:  string phrase
# output:  a string of capitalized letters representing an acronym for the input.


# Algorithm
###############
# 1.  Separate string phrase input into separate words and assign them to an array named words_array.
# 2.  Create a new empty string, acronym_string, which will serve as output.  Also create hyphenated_words, an array which will hold any hyphenated words, separated at the hyphen.
# 4.  Iterate through each word in words_array and check if there is a hyphen in the word.  
  # 4a.  If not, add the first letter of the word to acronym_string.  
  # 4b.  If so, split the word into two words at the hyphen and add the first letter of each of these two new words to acronym_string.
# 6.  Return acronym_string, converting it to uppercase letters. 

# Code
#########
class Acronym
  def self.abbreviate(string)
    words_array = string.split
    words_array_copy = words_array[0..-1]
    acronym_string = ''

    words_array_copy.each do |word|
      if word.include? '-'
        unhyphenated_words = word.split('-')
        words_array[words_array_copy.index(word)] = unhyphenated_words[0]
        words_array.insert(words_array_copy.index(word) + 1, unhyphenated_words[1])
      end
    end

    words_array.each do |word|
      if word != nil
        acronym_string << word[0]
      end
    end    
    acronym_string.upcase
  end
end


# Tests
#########
p Acronym.abbreviate('Portable Network Graphics') == 'PNG'

p Acronym.abbreviate('Complementary metal-oxide semiconductor') == "CMOS"
