class User < ApplicationRecord
    has_many :favorite_murals
    has_many :murals, through: :favorite_murals
    
    has_many :artist_favorites
    has_many :artist, through: :artist_favorites
    
end
