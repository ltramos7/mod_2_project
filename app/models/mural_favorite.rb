class MuralFavorite < ApplicationRecord
    belongs_to :mural
    belongs_to :user
end
