class Sensitsu < ApplicationRecord
    has_many :sensitsu_maps, depedent: :destroy
    has_many :onsen_spots, through: :sensitsu_maps
end
