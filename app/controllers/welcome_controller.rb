class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.admin == true
        redirect_to admin_index_path
      elsif current_user.user_type == false
        redirect_to applies_path
      elsif current_user.user_type == true
        redirect_to empl_index_path
      end
    else
      redirect_to new_user_session_path
    end
  end
end
