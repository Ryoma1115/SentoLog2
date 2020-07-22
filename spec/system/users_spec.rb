require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'ユーザー認証のテスト' do
    describe 'ユーザー新規登録' do
      before do
        visit new_user_registration_path
      end

      context "ページレイアウト" do
        it '「新規会員登録」の文字列が存在することを確認' do
          expect(page).to have_content '新規会員登録'
        end
      end

      context '新規登録画面に偏移' do
        it '新規登録に成功する' do
          fill_in 'user[last_name]', with: '大阪'
          fill_in 'user[first_name]', with: '太郎'
          fill_in 'user[last_name_kana]', with: 'オオサカ'
          fill_in 'user[last_name_kana]', with: 'タロウ'
          fill_in 'user[email]', with: 'tester1@example.com'
          fill_in 'user[postal_code]', with: '0000000'
          fill_in 'user[address]', with: 'osaka'
          fill_in 'user[phone_number]', with: '0000000000'
          fill_in 'user[password]', with: 'password'
          fill_in 'user[password_confirmation]', with: 'password'
          click_button '新規登録'
          expect(page).to have_content "アカウント登録が完了しました。"
        end
      end

    end
  end
end
