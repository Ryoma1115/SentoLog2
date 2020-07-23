require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  it "登録に苗字が必要" do
    expect(FactoryBot.build(:user, last_name: "")).to_not be_valid
  end

  it "登録に名前が必要" do
    expect(FactoryBot.build(:user, first_name: "")).to_not be_valid
  end

  it "登録に苗字（カナ）が必要" do
    expect(FactoryBot.build(:user, last_name_kana: "")).to_not be_valid
  end

  it "登録に名前（カナ）が必要" do
    expect(FactoryBot.build(:user, first_name_kana: "")).to_not be_valid
  end

  it "登録にメールアドレスが必要" do
    expect(FactoryBot.build(:user, email: "")).to_not be_valid
  end

  it "メールアドレスが重複していたら登録できない"do
    user1 = FactoryBot.create(:user, first_name: "taro", email: "taro@example.com")
    expect(FactoryBot.build(:user, first_name: "ziro", email: user1.email)).to_not be_valid
  end

  it "登録に郵便番号が必要が必要" do
    expect(FactoryBot.build(:user, postal_code: "")).to_not be_valid
  end

  it "郵便番号は７文字" do
    user = FactoryBot.build(:user, postal_code: "12345678")
    user.valid?
    expect(user.errors[:postal_code]).to_not include("is the wrong length (should be 7 characters)")
  end


  it "登録にパスワードが必要" do
    expect(FactoryBot.build(:user, password: "")).to_not be_valid
  end

  it "登録にパスワードが存在しても確認パスワードが必要" do
    expect(FactoryBot.build(:user, password_confirmation: "")).to_not be_valid
  end

  it "パスワードは６文字以上" do
    user = FactoryBot.build(:user, password: "12345")
    user.valid?
    expect(user.errors[:password]).to_not include("is too short (minimum is 6 characters)")
  end

  describe 'アソシエーションのテスト' do
    context 'Reviewモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:reviews).macro).to eq :has_many
      end
    end

    context 'Likeモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:likes).macro).to eq :has_many
      end
    end

    context 'Wentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:wents).macro).to eq :has_many
      end
    end

    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
    
end