class Oyutype < ApplicationRecord
    has_many :oyutype_maps, dependent: :destroy
    has_many :onsen_spots, through: :oyutype_maps
end
