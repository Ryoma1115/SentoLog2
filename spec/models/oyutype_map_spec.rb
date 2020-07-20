require 'rails_helper'

RSpec.describe OyutypeMap, type: :model do
    
  describe 'アソシエーションのテスト' do
    context 'OnsenSpotモデルとの関係' do
      it 'N:1となっている' do
        expect(OyutypeMap.reflect_on_association(:onsen_spot).macro).to eq :belongs_to
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Oyutypeモデルとの関係' do
      it 'N:1となっている' do
        expect(OyutypeMap.reflect_on_association(:oyutype).macro).to eq :belongs_to
      end
    end
  end

end
