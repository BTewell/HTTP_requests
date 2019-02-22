require 'http'

response = HTTP.get("https://api.wordnik.com/v4/word.json/sandwich/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

word_definition = response.parse
word = word_definition[0]["word"]
definition_one = word_definition[0]["text"]
definition_two = word_definition[1]["text"]

p word
p definition_one
p definition_two