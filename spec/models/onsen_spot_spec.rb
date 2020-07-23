require 'rails_helper'

RSpec.describe OnsenSpot, type: :model do
  
  describe 'アソシエーションのテスト' do
    context 'SensitsuMapモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:sensitsu_maps).macro).to eq :has_many
      end
    end

    context 'Sensitsuモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:sensitsus).macro).to eq :has_many
      end
    end

    context 'KounouMapモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:kounou_maps).macro).to eq :has_many
      end
    end

    context 'Kounouモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:kounous).macro).to eq :has_many
      end
    end

    context 'OyutypeMapモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:oyutype_maps).macro).to eq :has_many
      end
    end

    context 'Oyutypeモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:oyutypes).macro).to eq :has_many
      end
    end

    context 'Reviewモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:reviews).macro).to eq :has_many
      end
    end

    context 'Likeモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:likes).macro).to eq :has_many
      end
    end

    context 'Wentモデルとの関係' do
      it '1:Nとなっている' do
        expect(OnsenSpot.reflect_on_association(:wents).macro).to eq :has_many
      end
    end
  end

end
