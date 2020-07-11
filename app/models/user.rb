class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  
  has_many :reviews
  has_many :likes
  has_many :wents
  has_many :favorites

  def full_name
    last_name + " " + first_name
  end

  # 退会機能
  def active_for_authentication?
    super && (self.is_customer_status == true)
  end

end
