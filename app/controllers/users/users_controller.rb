class Users::UsersController < ApplicationController
    # マイページへのアクション
    def show
        @user = current_user
    end

    # 登録情報編集へのアクション
    def edit
        @user = current_user
    end

end
