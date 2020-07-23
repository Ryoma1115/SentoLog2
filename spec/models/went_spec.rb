require 'rails_helper'

RSpec.describe Went, type: :model do
      
  describe 'アソシエーションのテスト' do
    context 'Usertモデルとの関係' do
      it 'N:1となっている' do
        expect(Went.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'OnsenSpotモデルとの関係' do
      it 'N:1となっている' do
        expect(Went.reflect_on_association(:onsen_spot).macro).to eq :belongs_to
      end
    end
  end

end
