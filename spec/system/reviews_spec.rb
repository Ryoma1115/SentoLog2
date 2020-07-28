require 'rails_helper'

RSpec.describe "Reviews", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe '口コミ投稿に関するテスト' do
    let!(:user) { create(:user) }
    let!(:user2) { create(:user) }
    let!(:onsen_spot) { create(:onsen_spot) }
    let!(:sensitsu) { create(:sensitsu) }
    let!(:sensitsu_map) { create(:sensitsu_map) }
    let!(:kounou) { create(:kounou) }
    let!(:kounou_map) { create(:kounou_map) }
    let!(:oyutype) { create(:oyutype) }
    let!(:oyutype_map) { create(:oyutype_map) }
    let!(:review) { create(:review, user_id: user.id, onsen_spot_id: onsen_spot.id) }
    let!(:review2) { create(:review, user_id: user2.id, onsen_spot_id: onsen_spot.id) }

    before do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
      visit users_onsen_spot_path(onsen_spot)
    end

    describe '口コミ投稿フォームのテスト' do
      context '表示の確認および投稿テスト', js: true do
        it '口コミ投稿するボタンが表示される（モーダル表示ボタン）' do
          expect(page).to have_button '口コミ投稿する'
        end
        it '口コミタイトル投稿フォームが表示される' do
          expect(page).to have_field 'review[title]'
        end
        # it '星評価を投稿するフォームが表示される' do
        #   pp page.html
        #   expect(page).to have_css('#review_star')
        # end
        it '口コミ内容投稿フォームが表示される' do
          expect(page).to have_field 'review[comment]'
        end
        it '画像投稿フォームが表示される' do
          expect(page).to have_field 'review[image]'
        end
        it '口コミ投稿するボタンが表示される（モーダル内）' do
          expect(page).to have_button '口コミ投稿する'
        end
        it '投稿に成功する' do
          # pp page.html
          attach_file "review[image]", "#{Rails.root}/spec/fixtures/review1.jpg"
          fill_in 'review[title]', with: '気持ちよかったです。'
          fill_in 'review[comment]', with: 'また行きたいです。'
          click_button '口コミを投稿する'
        end
      end
    end
  end
end
