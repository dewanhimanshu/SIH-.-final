class EmplController < ApplicationController
  def index
    @appl = Apply.where("constituency=? AND status=?", current_user.constituency, "seen")
  end

  def destroy
    @employee=User.find(params[:id])
    @employee.destroy
    redirect_to admin_index_path
  end

  def accepted
    @appl = Apply.where(constituency: current_user.constituency)
    @accepted = @appl.where(status: "Accept")

  end

  def rejected
        @appl = Apply.where(constituency: current_user.constituency)
        @accepted=@appl.where(status: "Decline")
  end

  def all
    @apply=Apply.where(constituency: current_user.constituency)
  end


end
