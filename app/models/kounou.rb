class Kounou < ApplicationRecord
    has_many :kounou_maps, dependent: :destroy
    has_many :onsen_spots, through: :kounou_maps
end
