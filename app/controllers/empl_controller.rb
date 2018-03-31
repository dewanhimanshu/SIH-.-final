class EmplController < ApplicationController
  def index


    @appk =Apply.where(status: "seen", constituency: current_user.constituency)
    @appl = @appk.order("points DESC")

  end

  def destroy
    @employee=User.find(params[:id])
    @employee.destroy
    redirect_to admin_index_path
  end

  def accepted

    @appl = Apply.where(constituency: current_user.constituency)
    @appk = @appl.where(status: "Accept")
    @accepted = @appk.order("points DESC")
  end

  def all
    @appk=Apply.where(constituency: current_user.constituency)
    @apply = @appk.order("points DESC")

  end

  def rejected
    @appl = Apply.where(constituency: current_user.constituency, status: "Decline")
  end

  def show
    @a = Apply.find(params[:id])
  end
end
