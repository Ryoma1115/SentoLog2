require 'rails_helper'

RSpec.describe Kounou, type: :model do

  describe 'アソシエーションのテスト' do
    context 'KounouMapモデルとの関係' do
      it '1:Nとなっている' do
        expect(Kounou.reflect_on_association(:kounou_maps).macro).to eq :has_many
      end
    end

    context 'OnsenSpotモデルとの関係' do
      it '1:Nとなっている' do
        expect(Kounou.reflect_on_association(:onsen_spots).macro).to eq :has_many
      end
    end
  end

end
