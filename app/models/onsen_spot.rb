class OnsenSpot < ApplicationRecord
    attachment :image
    has_many :sensitsu_maps, dependent: :destroy
    has_many :sensitsus, through: :sensitsu_maps
    has_many :kounou_maps, dependent: :destroy
    has_many :kounous, through: :kounou_maps
    has_many :oyutype_maps, dependent: :destroy
    has_many :oyutypes, through: :oyutype_maps
    has_many :reviews
    has_many :likes
    has_many :wents


    # これで:addressを登録した際にgeocoderが緯度、経度のカラムにも自動的に値を入れてくれるようになる。
    geocoded_by :geocode_full_address
    after_validation :geocode

    # geocoder用の住所
    def geocode_full_address
        self.address_city + self.address_street
    end

    # 行きたい機能
    def liked_by?(user)
        likes.where(user_id: user.id).exists?
    end

    # 行った機能
    def wented_by?(user)
        wents.where(user_id: user.id).exists?
    end

    # 住所自動入力
    include JpPrefecture
    jp_prefecture :prefecture_code
    
    # 都道府県名称
    def prefecture_name
        JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
    end
      
    def prefecture_name=(prefecture_name)
        self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
    end

    # 住所を結合
    def full_address
        '〒' + self.postal_code.to_s + ' ' + prefecture_name + ' ' + self.address_city + ' ' + self.address_street + ' ' + self.address_building
    end
    
end
