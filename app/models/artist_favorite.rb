class ArtistFavorite < ApplicationRecord
    belongs_to :user
    belongs_to :artist
end
