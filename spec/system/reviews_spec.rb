require 'rails_helper'

RSpec.describe "Reviews", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe '口コミ投稿に関するテスト' do
    let(:user) { create(:user) }
    let(:user2) { create(:user) }
    let(:onsen_spot) { create(:onsen_spot, user: user) }
    let(:review) { create(:review, user_id: user.id, onsen_spot_id: onsen_spot.id) }
    before do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
      visit users_onsen_spot(onsen_spot)
    end

    describe '口コミ投稿フォームのテスト' do
      context '表示の確認および投稿テスト' do
        it '温泉地新規投稿' do
          expect(page).to have_button '口コミ投稿する'
        end
      end
    end
  end
  

  
end
