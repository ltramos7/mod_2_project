class Mural < ApplicationRecord
    belongs_to :artist
    belongs_to :commissioner
end
