class ApplicationController < ActionController::Base
    before_action :set_search
    def set_search
        #以下は検索に使うときの記述（変数やモデル名は変更してもいいですが
        #".ransack(params[:q])"はそのままで使用します。）
        # @q = params[:q]
        @search = OnsenSpot.ransack(params[:q])
        # @onsen_spots = OnsenSpot.search(name_cont: @q).result
        #以下は検索したものを表示する時に使う記述(一番シンプルで基本の形です)
        @onsen_spots = @search.result
    end
  
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :phone_number])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
end
