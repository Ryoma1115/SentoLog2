require 'rails_helper'

RSpec.describe "Footers", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'Footerページのテスト' do
    let!(:user) { create(:user) }
    let!(:onsen_spot) { create(:onsen_spot) }
    before do
      visit root_path
    end

    context '表示の確認' do
      it '銭湯Logと表示されている' do
        expect(page).to have_content '銭湯Log'
        # pp page.html
      end
      it 'Menuのリンクと表示確認' do
        expect(page).to have_content 'Menu'
        expect(page).to have_link 'トップページ', href: '/' 
        expect(page).to have_link 'サイト説明', href: '/about'
        expect(page).to have_link '温泉地を登録', href: '/users/onsen_spots/new'
        expect(page).to have_link '利用規約', href: '/' 
      end
      it 'Contactのリンクと表示確認' do
        expect(page).to have_content 'Contact'
        expect(page).to have_link 'Twitter', href: '/' 
        expect(page).to have_link 'Instagram', href: '/'
        expect(page).to have_link 'Github', href: 'https://github.com/Ryoma1115/SentoLog'
        expect(page).to have_link 'お問い合わせ', href: '/'
      end
    end
  end
end
