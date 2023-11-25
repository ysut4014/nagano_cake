class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]
  
  def after_sign_in_path_for(resource)
    if resource == :admin
      # 管理者側の遷移先
    else
      # 顧客側の遷移先
    end
  end
      
    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
