# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'json'

# p "Instering ingredients..."
# @dictionnary = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{@word}").read)
# topstories = JSON.parse(newpost)
# topstories[0...10].each do |toto|
#   generator = Post.new(title: toto)
#   generator.save
# end


# # @dictionnary = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{@word}").read)
# p "insertion des ingredients"
# lesingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
# lesingredients.each do |ingredient|
#   newingredient = Ingredient.create(name: ingredient)
#   newingredient.save
# end
# p "ingredients inséré"
p "insert ingredients"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_list = open(url).read
ingredients = JSON.parse(ingredients_list)

ingredients['drinks'].each do |value|
  puts value['strIngredient1']
  Ingredient.create!(name: value['strIngredient1'])
end
p "insert ingredients"
