class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :find_const, only: [:edit_constituency, :update_constituency, :destroy_constituency]

  def index
    @const = Constituency.all
  end

  def new_constituency
    @const = Constituency.new
  end

  def create_constituency
    @const = Constituency.new(params.require(:constituency).permit(:name, :pin_code, :number))
    if @const.save(params.require(:constituency).permit(:name, :pin_code, :number))
      redirect_to admin_index_path
    else
      render 'new_constituency'
    end
  end

  def edit_constituency
  end

  def update_constituency
    if @const.update(params.require(:constituency).permit(:name, :pin_code, :number))
      redirect_to admin_index_path
    else
      render 'edit_constituency'
    end
  end

  def destroy_constituency
    @const.destroy
    redirect_to admin_index_path
  end


  def show_constituency
    @const= Constituency.find(params[:id])
    @apply=Apply.where(constituency:@const.name)
  end

  def edit_empl_usr
    @user = User.find(params[:id])
  end

  def update_empl_usr
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:constituency))
      redirect_to admin_index_path
    else
      render 'edit_empl_usr'
    end
  end

  private
  def find_const
    @const = Constituency.find(params[:id])
  end

  def find_vac
    @vac = Vacency.find(params[:id])
  end
end
