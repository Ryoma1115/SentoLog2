require 'rails_helper'

RSpec.describe "Headers", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'ヘッダーのテスト' do
    describe 'ログインしていない場合' do
      before do
        visit root_path
      end

      context 'ヘッダーの表示を確認' do
        it 'ロゴが表示されているか' do
          expect(page).to have_link '', href: root_path
        end
        it '温泉地を登録するリンクが表示されている' do
          expect(page).to have_content('温泉地を登録する')
        end
      end
    end
  end
end
