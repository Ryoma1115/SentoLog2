require 'rails_helper'

RSpec.describe Sensitsu, type: :model do

  describe 'アソシエーションのテスト' do
    context 'SensitsuMapモデルとの関係' do
      it '1:Nとなっている' do
        expect(Sensitsu.reflect_on_association(:sensitsu_maps).macro).to eq :has_many
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'OnsenSpotモデルとの関係' do
      it '1:Nとなっている' do
        expect(Sensitsu.reflect_on_association(:onsen_spots).macro).to eq :has_many
      end
    end
  end

end
