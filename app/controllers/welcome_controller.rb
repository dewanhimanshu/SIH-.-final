class WelcomeController < ApplicationController
def index
  if user_signed_in?
    @user=current_user
  end
render :layout => false
end

  def delete
    redirect_to destroy_user_session_path
  end

end
