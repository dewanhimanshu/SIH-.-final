class WelcomeController < ApplicationController
  def index
       render :layout => false
  end

  def delete
    redirect_to destroy_user_session_path
  end

end
