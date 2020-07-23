require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'ユーザー認証のテスト' do
    describe 'ユーザー新規登録ページ' do
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

        it 'ブランクでユーザー登録を行うと失敗のフラッシュ' do
          fill_in 'user[last_name]', with: ''
          fill_in 'user[first_name]', with: ''
          fill_in 'user[last_name_kana]', with: ''
          fill_in 'user[last_name_kana]', with: ''
          fill_in 'user[email]', with: ''
          fill_in 'user[postal_code]', with: '0000000'
          fill_in 'user[address]', with: 'osaka'
          fill_in 'user[phone_number]', with: '0000000000'
          fill_in 'user[password]', with: 'password'
          fill_in 'user[password_confirmation]', with: 'password'
          click_button '新規登録'
          expect(page).to have_content "5 件のエラーが発生したため 会員 は保存されませんでした。"
        end
      end
    end
  end

  describe 'ユーザーログイン' do
    let(:user) { create(:user) }
    before do
      visit new_user_session_path
    end
    context 'ログイン画面に偏移' do
      let(:test_user) { user }
      it 'ログインに成功する' do
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'

        expect(page).to have_content 'ログインしました'
      end

      it 'ログインに失敗する'do
        fill_in 'user[email]', with: ''
        fill_in 'user[password]', with: ''
        click_button 'ログイン'

        expect(current_path).to eq(new_user_session_path)
      end
    end
  end

  describe 'プロフィール編集ページ' do
      let(:user) { create(:user) }
      before do
        user = create(:user)
        visit new_user_session_path
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
        click_link "マイページ"
      end

      context '表示の確認' do
        it 'マイページと表示される' do
          expect(page).to have_content('マイページ')
        end
        it '画像が表示される' do
          expect(page).to have_css('img.profile_image')
        end
        it "正しいタイトルが表示されることを確認" do
          expect(page).to have_content('マイページを更新する')
        end
        it '名前が表示される' do
          expect(page).to have_content(user.full_name)
        end
        it '名前(カナ)が表示される' do
          expect(page).to have_content(user.full_name_kana)
        end
        it '名前(カナ)が表示される' do
          expect(page).to have_content(user.full_name_kana)
        end
        it '郵便番号が表示される' do
          expect(page).to have_content(user.postal_code)
        end
        it '住所が表示される' do
          expect(page).to have_content(user.address)
        end
        it '電話番号が表示される' do
          expect(page).to have_content(user.phone_number)
        end
        it '編集リンクが表示される' do
          expect(page).to have_link '', href: users_users_edit_path
        end
      end

      describe '編集のテスト' do
        context '自分の編集画面への遷移' do
          it '遷移できる' do
            visit users_users_edit_path
            expect(current_path).to eq('/users/users/edit')
          end
        end

        context '表示の確認' do
          before do
            visit users_users_edit_path
          end

          it '登録情報編集' do
            expect(page).to have_content('登録情報編集')
          end
          it '画像編集フォームが表示される' do
            expect(page).to have_field 'user[profile_image]'
          end
          it '名前編集フォームに自分の名前(last_name)が表示される' do
            expect(page).to have_field 'user[last_name]', with: user.last_name
          end
          it '名前編集フォームに自分の名前(first_name)が表示される' do
            expect(page).to have_field 'user[first_name]', with: user.first_name
          end
          it '名前編集フォームに自分の名前(last_name_kana)が表示される' do
            expect(page).to have_field 'user[last_name_kana]', with: user.last_name_kana
          end
          it '名前編集フォームに自分の名前(first_name_kana)が表示される' do
            expect(page).to have_field 'user[first_name_kana]', with: user.first_name_kana
          end
          it '郵便番号編集フォームに自分の郵便番号がが表示される' do
            expect(page).to have_field 'user[postal_code]', with: user.postal_code
          end
          it '住所編集フォームに自分の住所が表示される' do
            expect(page).to have_field 'user[address]', with: user.address
          end
          it '電話番号編集フォームに自分の電話番号が表示される' do
            expect(page).to have_field 'user[phone_number]', with: user.phone_number
          end

          it '編集内容を保存するリンクが表示される' do
            expect(page).to have_button '編集内容を保存する'
          end
          it '退会するリンクが表示される' do
            expect(page).to have_link '', href: users_quit_path
          end
        end
      end
  end

end
