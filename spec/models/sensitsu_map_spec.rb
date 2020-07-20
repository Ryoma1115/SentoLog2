require 'rails_helper'

RSpec.describe SensitsuMap, type: :model do
    
  describe 'アソシエーションのテスト' do
    context 'OnsenSpotモデルとの関係' do
      it 'N:1となっている' do
        expect(SensitsuMap.reflect_on_association(:onsen_spot).macro).to eq :belongs_to
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Sensitsuモデルとの関係' do
      it 'N:1となっている' do
        expect(SensitsuMap.reflect_on_association(:sensitsu).macro).to eq :belongs_to
      end
    end
  end

end
