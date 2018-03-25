class WelcomeController < ApplicationController
  def index
    if current_user.user_type == false
      redirect_to applies_path
    end 
  end
end
