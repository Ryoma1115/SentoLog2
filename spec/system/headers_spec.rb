require 'rails_helper'

RSpec.describe "Headers", type: :system do
  before do
    driven_by :selenium_chrome_headless
  end
  Capybara.default_driver = :rack_test
  Capybara.javascript_driver = :selenium_chrome_headless

  describe 'ヘッダーのテスト' do
    describe 'ログインしていない場合' do
      before do
        visit root_path
      end

      context 'ヘッダーの表示を確認' do
        subject { page }
        it ''
      end
    end
  end
end
