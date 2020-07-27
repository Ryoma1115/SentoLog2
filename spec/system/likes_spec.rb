require 'rails_helper'

RSpec.describe "Likes", type: :system do
  before do
    driven_by(:rack_test)
  end

  let!(:user) { create(:user) }
  let!(:onsen_spot) { create(:onsen_spot) }
  let!(:like) { create(:like, user_id: user.id, onsen_spot_id: onsen_spot.id) }

  describe '温泉地に行きたいをつける機能（温泉地一覧から）' do
    before do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
      visit users_onsen_spots_path
    end

    context '行きたいをクリックした場合', js: true do
      # it "Ajexが反応する" do
      #   pp page.html
      #   post :create, format: :js, params: { onsen_spot_id: onsen_spot.id, id: like.id }
      #   expect(response.content_type).to eq 'users/likes/like'
      # end
      it '行きたいできる' do
       
        find('.box3').click
        expect(page).to have_css "div#likes_buttons_#{onsen_spot.id}"
        pp page.html
      end
      it '行きたいを取り消せる' do
        
        # expect(page).to have_css "div#likes_buttons_#{onsen_spot.id}"
        find('.box3').click
        pp page.html
        find('.box2').click
        expect(page).to have_css '.box3'
        expect(page).to have_css "div#likes_buttons_#{onsen_spot.id}"
      end
    end
  end


end
