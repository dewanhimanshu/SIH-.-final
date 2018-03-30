class HomeDashboardController < ApplicationController
  def index
    if current_user.admin == true
      redirect_to admin_index_path
    elsif current_user.user_type == true
      redirect_to empl_index_path
    else
      redirect_to applies_path
    end
  end
end
