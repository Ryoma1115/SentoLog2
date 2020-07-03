class Users::UsersController < ApplicationController
    # マイページへのアクション
    def show
        @user = current_user
    end
end
