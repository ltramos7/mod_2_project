# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
 require 'open-uri'
 require 'json'
require 'rest-client'

rm = RestClient.get 'https://data.cityofchicago.org/resource/we8h-apcf.json'
# byebug

# adding another test line

# 10.times do 
#     Artist.create(name: Faker::Name.name, bio: Faker::Quote.famous_last_words)
# end
rm_array = JSON.parse(rm)

# rm_array.each do |arti|
#     Artist.create(
#         name: arti["artist_credit"],
#         bio: arti["artwork_title"]
#     )
# end
# a1 = Artist.create(name: "Ali Six", bio: "Born in a small...")
# a2 = Artist.create(name: "Frillz", bio: "Lives in a small town...")

# c1 = Commissioner.create(name: "City of Chicago")
# c2 = Commissioner.create(name: "John Leavell")


# rm_array.each do |comm|
#     Commissioner.create(
#         name: comm["affiliated_or_commissioning"].uniq
#     )
# end
# m1 = Mural.create(mural_name: "A moment in time", artist_id: 1, commissioner_id: 2, location: "123 W. Chicago")
rm_array.each do |mural|
    Mural.create(
        mural_name: ["artwork_title"],
        location: ["street_address"]
    )
end

# m2 = Mural.create(mural_name: "Seasonings", artist_id: 2, commissioner_id: 1, location: "456 W. Illinois")

# mf1 = MuralFavorite.create(user_id: User.first.id, mural_id: Mural.first.id)
# mf2 = MuralFavorite.create(user_id: User.second.id, mural_id: Mural.second.id)


# user_one = User.create(user_name: "Matthew")
# user_two = User.create(user_name: "Lindsay")

# artist_fave_one = ArtistFavorite.create(user_id:2, artist_id:1)

# artist_fave_three = ArtistFavorite.create(user_id:1, artist_id:1)

# artist_fave_two = ArtistFavorite.create(user_id:1, artist_id:2)




