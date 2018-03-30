class UsersController < ApplicationController
    def new
     @user = User.new
   end

   def add_user
     @user = User.new(user_params)
     @user.user_type=true
     @user.save
        redirect_to admin_index_path
   end

   private

  def user_params
   params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
