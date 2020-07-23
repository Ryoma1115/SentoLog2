require 'rails_helper'

RSpec.describe "Headers", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'ヘッダーのテスト' do
    describe 'ログインしていない場合' do
      let(:sensitsu) { create(:sensitsu) }
      before do
        visit root_path
      end

      context 'ヘッダーの表示を確認' do
        it 'ロゴが表示されているか' do
          expect(page).to have_link '', href: root_path
        end
        it 'モーダルの泉質が表示されている' do
          expect(page).to have_content('泉質')
        end
        it 'ドロップダウンメニュー の都道府県が表示されている' do
          expect(page).to have_content('泉質')
        end
        it '温泉地を登録するリンクが表示されている' do
          expect(page).to have_content('温泉地を登録する')
        end
        it '温泉一覧リンクが表示されている' do
          expect(page).to have_content('温泉一覧')
        end
        it '新規登録リンクが表示されている' do
          expect(page).to have_content('新規登録')
        end
        it 'ログインリンクが表示されている' do
          expect(page).to have_content('ログイン')
        end
        it 'Aboutリンクが表示されている' do
          expect(page).to have_content('About')
        end
      end

      context 'ヘッダーのリンクを確認' do
        it 'モーダルの泉質リンクから泉質showに移動' do
          # expect(page).to have_link '', href: users_sensitsu_path(sensitsu.id)
        end
        it 'モーダルの効能リンクから効能showに移動' do
          # expect(page).to have_link '', href: users_kounou_path(kounou.id)
        end
        it 'モーダルのお湯タイプリンクからお湯タイプshowに移動' do
          # expect(page).to have_link '', href: users_oyutype_path(oyutype.id)
        end
      end
    end
  end
end
