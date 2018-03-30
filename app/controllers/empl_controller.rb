class EmplController < ApplicationController
  def index
<<<<<<< HEAD

    @appk =Apply.where(status: "seen", constituency: current_user.constituency)
    @appl = @appk.order("points DESC")
=======
    @appl = Apply.where("constituency=? AND status=?", current_user.constituency, "seen")
>>>>>>> eb83f850b77964cf9a33debc3bf9bda4915b7b90
  end

  def destroy
    @employee=User.find(params[:id])
    @employee.destroy
    redirect_to admin_index_path
  end

  def accepted
<<<<<<< HEAD
    @appl = Apply.where(constituency: current_user.constituency)
    @appk = @appl.where(status: "Accept")
    @accepted = @appk.order("points DESC")
  end

  def all
    @appk=Apply.where(constituency: current_user.constituency)
    @apply = @appk.order("points DESC")
=======
    @appl = Apply.where(constituency: current_user.constituency, status: "Accept")
>>>>>>> eb83f850b77964cf9a33debc3bf9bda4915b7b90
  end

  def rejected
    @appl = Apply.where(constituency: current_user.constituency, status: "Decline")
  end

<<<<<<< HEAD
=======
  def all
    @apply=Apply.where(constituency: current_user.constituency)
  end
>>>>>>> eb83f850b77964cf9a33debc3bf9bda4915b7b90


end
