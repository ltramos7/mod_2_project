class User < ApplicationRecord
    has_many :favorite_murals
    has_many :murals, through: :favorite_murals
    
    
end
