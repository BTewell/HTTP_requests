
require 'http'

p "Salutations, Orator! Expand your lexicon now:"

query = gets.chomp
response = HTTP.get("https://api.wordnik.com/v4/word.json/#{query}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")  

word_definition = response.parse
i = 0
word_definition.length.times do     
  p "#{i + 1}. #{word_definition[i]["text"]}"
  i+=1
end
# word = word_definition[0]["word"]
# definition_one = word_definition[0]["text"]
# definition_two = word_definition[1]["text"]

# p word
# p definition_one
# p definition_two