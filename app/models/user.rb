class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  
  has_many :reviews
  

  def full_name
    first_name + " " + last_name
  end

  # 退会機能
  def active_for_authentication?
    super && (self.is_customer_status == true)
  end

end
