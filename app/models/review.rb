class Review < ApplicationRecord
    attachment :image
    
    belongs_to :onsen_spot
    belongs_to :user
    has_many :favorites

    validates :title, presence: true
    validates :comment, presence: true
    validates :rate, numericality: {
        less_than_or_equal_to: 5,
        greater_than_or_equal_to: 1
      }, presence: true

    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
