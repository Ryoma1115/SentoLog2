require 'rails_helper'

RSpec.describe Oyutype, type: :model do
  
  describe 'アソシエーションのテスト' do
    context 'OyutypeMapモデルとの関係' do
      it '1:Nとなっている' do
        expect(Oyutype.reflect_on_association(:oyutype_maps).macro).to eq :has_many
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'OnsenSpotモデルとの関係' do
      it '1:Nとなっている' do
        expect(Oyutype.reflect_on_association(:onsen_spots).macro).to eq :has_many
      end
    end
  end

end
