class User < ApplicationRecord
    has_many :mural_favorites
    has_many :murals, through: :mural_favorites
    
    has_many :artist_favorites
    has_many :artist, through: :artist_favorites
    
    has_secure_password
    # Verify that email field and user_name is not blank and that it doesn't already exist in the db (prevents duplicates):

    validates :user_name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true

end
