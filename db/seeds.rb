# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

cocktails = [
  {
    name: "Old Fashioned",
    photo: "http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg"
    },
  {
    name: "Margarita",
    photo: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-margarita.jpg"
    },
  {
    name: "Sidecar",
    photo: "http://www.seriouseats.com/images/2014/11/20141101-cognac-sidecar-carey-jones.jpg"
    },
  {
    name: "Bloody Mary",
    photo: "http://www.seriouseats.com/images/2015/03/twase-20150320-21.jpg"
    },
  {
    name: "Mai Tai",
    photo: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-mai-tai.jpg"
    },
]

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


cocktails.each do |data|
  new_cocktail = Cocktail.new(name: data[:name])
  new_cocktail.remote_photo_url = data[:photo]
  new_cocktail.save
end

