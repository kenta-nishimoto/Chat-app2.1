class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # authenticate_user!：deviseに入っているメソッドでログインしていないと自動でログイン画面に遷移される
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # devise_parameter_sanitizer：deviseのメソッドでカラムの許可を行う
    # 上記の記述のおかげでnameカラムの保存が可能になっている
  end
end
