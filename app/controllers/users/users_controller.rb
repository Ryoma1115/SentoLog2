class Users::UsersController < ApplicationController
    before_action :authenticate_user!

    # マイページへのアクション
    def show
        @user = current_user
    end

    # 登録情報編集へのアクション
    def edit
        @user = current_user
    end

    # 登録情報の編集を保存するアクション
    def update
        @user = current_user
        if @user.update(user_params)
            flash[:success] = "登録情報を変更しました"
            redirect_to users_show_path
        else
            render :edit
        end
    end

    def quit

    end

    def withdraw
        @user = current_user
        @user.update(is_customer_status: false)
        reset_session

        flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
        redirect_to root_path
    end

    private
        def user_params
            params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :phone_number, :is_customer_status, :profile_image)
        end
end
