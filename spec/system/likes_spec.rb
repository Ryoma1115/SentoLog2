# require 'rails_helper'

# RSpec.describe "Likes", type: :system do
#   # before do
#   #   driven_by(:rack_test)
#   # end

#   let!(:user) { create(:user) }
#   let!(:onsen_spot) { create(:onsen_spot) }
#   let!(:like) { create(:like, user_id: user.id, onsen_spot_id: onsen_spot.id) }

#   describe '温泉地に行きたいをつける機能（温泉地一覧から）' do
#     before do
#       visit new_user_session_path
#       fill_in 'user[email]', with: user.email
#       fill_in 'user[password]', with: user.password
#       click_button 'ログイン'
#       visit users_onsen_spots_path
#     end

#     context '行きたいをクリックした場合' do
#       # it "Ajexが反応する" do
#       #   pp page.html
#       #   post :create, format: :js, params: { onsen_spot_id: onsen_spot.id, id: like.id }
#       #   expect(response.content_type).to eq 'users/likes/like'
#       # end
#       # it "Ajexが反応する" do
#       #   pp page.html
#       #   post :create, format: :js, params: { onsen_spot_id: onsen_spot.id, id: like.id }
#       #   expect(response.content_type).to eq 'text/javascript'
#       # end
#       # it 'test' do
#       # end
#       it '行きたいを取り消せる' do
#         pp page.html
#         # # find("#box3", visible: false).trigger("click")
#         find('#box3').click
#         # sleep 0.5
#         # pp page.html
#         # # find('#box3').click
#         # # # click_lin'行きたい♨️'
#         # # sleep 0.5
#         save_and_open_screenshot
#         pp page.html
#         expect(page).to have_css '#box2'
        
#       end
#       it '行きたいを押せる' do
#         # # expect(page).to have_css "div#likes_buttons_#{onsen_spot.id}"
#         # find('.box2').click
#         # find('.box3').click
#         # expect(page).to have_css '.box3'
#         # expect(page).to have_css "div#likes_buttons_#{onsen_spot.id}"
        
#       end
#     end
#   end


# end
