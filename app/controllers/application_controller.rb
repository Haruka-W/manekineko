class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
  # 会員新規登録の際にデータ保存する為に以下のカラムを記載
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :handle_name, :prefecture])
  end
end
