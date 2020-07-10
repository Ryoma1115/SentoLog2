class Review < ApplicationRecord
    belongs_to :onsen_spot
    belongs_to :user

    validates :comment, presence: true
end
