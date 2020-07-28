require 'rails_helper'

RSpec.describe "TopPages", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'トップページのテスト' do
    let!(:user) { create(:user) }
    let!(:onsen_spot) { create(:onsen_spot) }
    before do
      visit root_path
    end

    describe 'body部分のテスト' do
      context '表示の確認' do
        it 'main-visual(写真が)表示される' do
          expect(page).to have_css '.main-visual'
        end
        it 'main-visualに文字（Sento Log）が表示される' do
          expect(page).to have_content 'Sento Log'
        end
        it '検索窓が表示される' do
          expect(page).to have_css 'input#q_name_or_postal_code_or_address_or_address_city_or_phone_number_or_introduction_cont'
        end
        it 'Mapから探す(マップのマーカーから温泉地へ飛べます)が表示される' do
          expect(page).to have_content 'Mapから探す(マップのマーカーから温泉地へ飛べます)'
        end
        it 'Mapが表示される' do
          expect(page).to have_css 'div#map'
        end
        it '温泉一覧はこちらが表示される(リンクと文字)' do
          expect(page).to have_content '温泉一覧はこちら'
          expect(page).to have_link '', href: users_onsen_spots_path
        end
      end
    end
    
  end
end
