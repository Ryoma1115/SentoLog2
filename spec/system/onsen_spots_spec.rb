require 'rails_helper'

RSpec.describe "OnsenSpots", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe '温泉地に関するテスト' do
    let!(:user) { create(:user) }
    let!(:user2) { create(:user) }
    let!(:onsen_spot) { create(:onsen_spot) }
    let!(:onsen_spot2) { create(:onsen_spot) }
    let!(:sensitsu) { create(:sensitsu) }
    let!(:sensitsu_map) { create(:sensitsu_map) }
    let!(:kounou) { create(:kounou) }
    let!(:kounou_map) { create(:kounou_map) }
    let!(:oyutype) { create(:oyutype) }
    let!(:oyutype_map) { create(:oyutype_map) }

    before do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
    end

    describe '温泉地投稿フォームのテスト' do
      before do
        visit new_users_onsen_spot_path
      end

      context '表示の確認および投稿テスト' do
        it '温泉地新規投稿' do
          expect(page).to have_content('温泉地新規投稿')
        end
        it '画像投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[image]'
        end
        it '名前投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[name]'
        end
        it '泉質投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[sensitsu_ids][]'
        end
        it '効能投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[kounou_ids][]'
        end
        it 'お湯タイプ投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[oyutype_ids][]'
        end
        it '説明投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[introduction]'
        end
        it '郵便番号投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[postal_code]'
        end
        it '都道府県選択フォームが表示される' do
          expect(page).to have_field 'onsen_spot[prefecture_code]'
        end
        it '市区町村投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[address_city]'
        end
        it '番地投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[address_street]'
        end
        it '建物投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[address_building]'
        end
        it '電話番号投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[phone_number]'
        end
        it '営業時間投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[business_hour]'
        end
        it '利用料金投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[fee]'
        end
        it '駐車場投稿フォームが表示される' do
          expect(page).to have_field 'onsen_spot[parking]'
        end
        it '編集内容を保存するリンクが表示される' do
          expect(page).to have_button '温泉地を登録する'
        end
        it '投稿に成功する' do
          attach_file "onsen_spot[image]", "#{Rails.root}/spec/fixtures/onsen_spot_default.jpg"
          fill_in 'onsen_spot[name]', with: '大阪温泉'
          fill_in 'onsen_spot[introduction]', with: 'testtest'
          fill_in 'onsen_spot[postal_code]', with: '1234567'
          fill_in 'onsen_spot[address_city]', with: '大阪市'
          fill_in 'onsen_spot[address_street]', with: '北区'
          fill_in 'onsen_spot[address_building]', with: 'マルビル'
          fill_in 'onsen_spot[phone_number]', with: '00000000000'
          fill_in 'onsen_spot[business_hour]', with: '7:00 ~ 22:00'
          fill_in 'onsen_spot[fee]', with: '800'
          fill_in 'onsen_spot[parking]', with: '有'
          click_button '温泉地を登録する'
          expect(page).to have_content "温泉地を登録しました。"
          expect(page).to have_link(href: users_onsen_spot_path(OnsenSpot.first))
        end
      end
    end

    describe '温泉一覧画面のテスト' do
      before do
        visit users_onsen_spots_path
      end
      context '表示の確認' do
        it '温泉地一覧と表示される' do
          expect(page).to have_content '温泉地一覧'
        end
        it '温泉地一覧（全何件）が表示される' do
          # pp page.html
          expect(page).to have_content "温泉地一覧(全#{OnsenSpot.count}件)"
        end
        it '温泉地詳細のリンク(写真)が表示される' do
          expect(page).to have_link '', href: users_onsen_spot_path(onsen_spot)
        end
        it '温泉地に行きたいのリンクが表示される' do
          expect(page).to have_link '', href: users_onsen_spot_likes_path(onsen_spot.id)
        end
        it '温泉地に行ったのリンクが表示される' do
          expect(page).to have_link '', href: users_onsen_spot_wents_path(onsen_spot.id)
        end
        it '温泉地の情報が表示される' do
          expect(page).to have_content "星評価"
          expect(page).to have_content "名前" 
          expect(page).to have_content "泉質" 
          expect(page).to have_content "効能"
          expect(page).to have_content "お湯タイプ" 
          expect(page).to have_content "説明" 
          expect(page).to have_content "住所"
          expect(page).to have_content "電話番号" 
          expect(page).to have_content "営業時間" 
          expect(page).to have_content "利用料金"
          expect(page).to have_content "駐車場"
        end
      end
    end

    describe '温泉地詳細ページのテスト' do
      before do
        visit users_onsen_spot_path(onsen_spot)
      end

      context '表示の確認' do
        it 'namae' do
          pp page.html
        end
      end
    end

  end
end
