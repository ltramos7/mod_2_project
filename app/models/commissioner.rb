class Commissioner < ApplicationRecord
    has_many :murals
    has_many :artists, through: :murals
end
