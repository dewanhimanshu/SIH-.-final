class EmplController < ApplicationController
  def index
    @appl = Apply.where("applied=? AND constituency=? AND status!=? AND status!=?", true, current_user.constituency, "Accepted", "Declined")
  end

  def destroy
    @employee=User.find(params[:id])
    @employee.destroy
    redirect_to admin_index_path
  end
end
