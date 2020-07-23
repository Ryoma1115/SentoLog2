require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { FactoryBot.build(:review) }

  it "口コミ投稿にはタイトルが必要" do
    expect(FactoryBot.build(:review, title: "")).to_not be_valid
  end

  it "口コミ投稿にはコメントが必要" do
    expect(FactoryBot.build(:review, comment: "")).to_not be_valid
  end

  it "口コミ投稿には星評価が必要" do
    expect(FactoryBot.build(:review, rate: "")).to_not be_valid
  end

  it "口コミ投稿の星評価は1.0 ~ 5.0点 6.0の場合" do
    expect(FactoryBot.build(:review, rate: 6.0 )).to_not be_between(1.0, 5.0).inclusive
  end

  it "口コミ投稿の星評価は1.0 ~ 5.0点 0.5の場合" do
    expect(FactoryBot.build(:review, rate: 0.5 )).to_not be_between(1.0, 5.0).inclusive
  end

  it "外部key(onsen_spot_idとuser_id)が無ければ口コミ投稿できない" do
    expect(FactoryBot.build(:review, onsen_spot_id: "", user_id: "")).to_not be_valid
  end 
  
  describe 'アソシエーションのテスト' do
    context 'OnsenSpotモデルとの関係' do
      it 'N:1となっている' do
        expect(Review.reflect_on_association(:onsen_spot).macro).to eq :belongs_to
      end
    end

    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Review.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Favoritesモデルとの関係' do
      it '1:Nとなっている' do
        expect(Review.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end

end
