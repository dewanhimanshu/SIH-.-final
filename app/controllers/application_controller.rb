class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
    def after_sign_in_path_for(resource)
      if user_signed_in?
      if current_user.admin == true
         admin_index_path
      elsif current_user.user_type == false
         applies_path
      elsif current_user.user_type == true
         empl_index_path
      end
    end
  end

end
