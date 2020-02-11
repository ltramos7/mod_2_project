class Artist < ApplicationRecord
    has_many :murals
    has_many :commissioners, through: :murals
    #some thing here
    has_many :artist_favorites
    has_many :users, through: :artist_favorites
end
