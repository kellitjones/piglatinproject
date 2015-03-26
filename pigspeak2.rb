
# creates an array of letters within a specified range
Alphabet = ('a'..'z').to_a
# %w() creates an array seperated by spaces instead of commas 
Vowels = %w[a e i o u]
Consonants = Alphabet - Vowels
#creates the method translate, that will translate a word or multiple words into pig latin from english
def translate(word)
    #if word begins with a vowel sound add an 'ay' to the end
  if Vowels.include?(word[0])
    word + 'ay'
    #if word begins with a cosonant sound, move it to the end of the word,and then add an "ay"
  elsif Consonants.include?(word[0]) && 
    Consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'
    #if word begins with multiple consonant sound, move it to the end of the word, and then add an "ay"
  elsif Consonants.include?(word[0])
    word[1..-1] + word[0..0] + 'ay'
    #other wise print the word as it is
  else
    word
  end
end
#prints text to asks for some words 
puts "Enter some text to translate"
# takes the words 
text = gets
#puts text into pig latin according to the translate method
puts text.split.map(&method(:translate)).join(' ')