require 'rails_helper'

RSpec.describe "Headers", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'ヘッダーのテスト' do
    let!(:user) { create(:user) }
    let!(:onsen_spot) { create(:onsen_spot) }
    let!(:sensitsu) { create(:sensitsu) }
    let!(:sensitsu_map) { create(:sensitsu_map) }
    let!(:kounou) { create(:kounou) }
    let!(:kounou_map) { create(:kounou_map) }
    let!(:oyutype) { create(:oyutype) }
    let!(:oyutype_map) { create(:oyutype_map) }
    describe 'ログインしていない場合' do
      before do
        visit root_path
      end

      context 'ヘッダーの表示を確認' do
        it 'ロゴが表示されているか' do
          expect(page).to have_css("img[src*='/assets/銭湯Log-c48df98e9b0f4f76942ba07a91283d0c75da9ccb0c6d4d3c2770b3e7fc904e51.png']")
          expect(page).to have_link '', href: root_path
        end
        it 'モーダルの泉質が表示されている' do
          expect(page).to have_content('泉質')
        end
        it 'ドロップダウンメニュー の都道府県が表示されている' do
          expect(page).to have_content('泉質')
        end
        it '温泉地を登録するが表示されている' do
          expect(page).to have_content('温泉地を登録する')
        end
        it '温泉一覧が表示されている' do
          expect(page).to have_content('温泉一覧')
        end
        it '新規登録が表示されている' do
          expect(page).to have_content('新規登録')
        end
        it 'ログインが表示されている' do
          expect(page).to have_content('ログイン')
        end
        it 'Aboutが表示されている' do
          expect(page).to have_content('About')
        end
      end

      context 'ヘッダーのリンクを確認' do
        it 'モーダルの泉質リンクから泉質showに移動' do
          expect(page).to have_link '', href: users_sensitsu_path(sensitsu.id)
        end
        it 'モーダルの効能リンクから効能showに移動' do
          expect(page).to have_link '', href: users_kounou_path(kounou.id)
        end
        it 'モーダルのお湯タイプリンクからお湯タイプshowに移動' do
          expect(page).to have_link '', href: users_oyutype_path(oyutype.id)
        end
        it '都道府県リンクが表示されている' do
          expect(page).to have_link '', href: "/users/onsen_spot/prefecture/search?prefecture_search=1"
        end
        it '温泉地を登録するリンクが表示されている' do
          expect(page).to have_link '', href: new_users_onsen_spot_path
        end
        it '新規登録リンクが表示されている' do
          expect(page).to have_link '', href: new_user_registration_path
        end
        it 'ログインリンクが表示されている' do
          expect(page).to have_link '', href: new_user_session_path
        end
        it 'Aboutリンクが表示されている' do
          expect(page).to have_link '', href: about_path
        end
      end
    end

    describe 'ログインしている場合' do
      let(:user) { create(:user) }
      before do
        visit new_user_session_path
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
      end
      context 'ヘッダーの表示を確認' do
        it 'ロゴが表示されているか' do
          expect(page).to have_link '', href: root_path
        end
        it 'モーダルの泉質が表示されている' do
          expect(page).to have_content('泉質 ▼')
        end
        it 'ドロップダウンメニュー の都道府県が表示されている' do
          expect(page).to have_content('都道府県 ▼')
        end
        it '温泉地を登録するが表示されている' do
          expect(page).to have_content('温泉地を登録する')
        end
        it '温泉一覧が表示されている' do
          expect(page).to have_content('温泉一覧')
        end
        it 'ログアウトが表示されている' do
          expect(page).to have_content('ログアウト')
        end
        it 'マイページが表示されている' do
          expect(page).to have_content('マイページ')
        end
        it 'Aboutが表示されている' do
          expect(page).to have_content('About')
        end
      end

      context 'ヘッダーのリンクを確認' do
        it 'モーダルの泉質リンクから泉質showに移動' do
          expect(page).to have_link '', href: users_sensitsu_path(sensitsu.id)
        end
        it 'モーダルの効能リンクから効能showに移動' do
          expect(page).to have_link '', href: users_kounou_path(kounou.id)
        end
        it 'モーダルのお湯タイプリンクからお湯タイプshowに移動' do
          expect(page).to have_link '', href: users_oyutype_path(oyutype.id)
        end
        it '都道府県リンクが表示されている' do
          expect(page).to have_link '', href: "/users/onsen_spot/prefecture/search?prefecture_search=1"
        end
        it '温泉地を登録するリンクが表示されている' do
          expect(page).to have_link '', href: new_users_onsen_spot_path
        end
        it 'ログアウトリンクが表示されている' do
          expect(page).to have_link '', href: destroy_user_session_path
        end
        it 'マイページリンクが表示されている' do
          expect(page).to have_link '', href: users_show_path
        end
        it 'Aboutリンクが表示されている' do
          expect(page).to have_link '', href: about_path
        end
      end
    end
  end
end
