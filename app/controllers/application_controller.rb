class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resouce)
   about_path
  end
  # after_sign_in_path_forはdeviceのメソッド サインイン後の遷移先を指定できる
  # (resouce)という引数はログインを実行したモデル(User)のインスタンスが格納
  # ログイン後ユーザーに関連するページに遷移させたい時はresouceを活用
  
  def after_sign_out_path_for(resouce)
    about_path
  end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
