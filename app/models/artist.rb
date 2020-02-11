class Artist < ApplicationRecord
    has_many :murals
    has_many :commissioners, through: :murals
end
