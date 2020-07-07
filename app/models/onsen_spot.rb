class OnsenSpot < ApplicationRecord
    attachment :image
    has_many :sensitsu_maps, dependent: :destroy
    has_many :sensitsus, through: :sensitsu_maps
end
