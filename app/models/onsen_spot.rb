class OnsenSpot < ApplicationRecord
    attachment :image
    has_many :sensitsu_maps, dependent: :destroy
    has_many :sensitsus, through: :sensitsu_maps
    has_many :kounou_maps, dependent: :destroy
    has_many :kounous, through: :kounou_maps
    has_many :oyutype_maps, dependent: :destroy
    has_many :oyutypes, through: :oyutype_maps
    has_many :reviews
end
