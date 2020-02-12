class User < ApplicationRecord
    has_many :mural_favorites
    
    has_many :murals, through: :mural_favorites
    
    
    has_many :artist_favorites
    has_many :artists, through: :artist_favorites
    
    validates :user_name, presence: true
    validates :user_name, uniqueness: true
    
end
